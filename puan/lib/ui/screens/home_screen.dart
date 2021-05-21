import 'package:flutter/material.dart';
import 'package:decorated_icon/decorated_icon.dart';
import 'package:flutter/services.dart';
import 'package:puan/ui/widgets/FaceRelogio.dart';

class Home extends StatefulWidget {
  @override
  HomeScreen createState() => HomeScreen();
}

class HomeScreen extends State<Home> {
  var cor1 = Color.fromARGB(255, 239, 242, 247);
  var cor2 = Color.fromARGB(255, 255, 255, 255);
  var fonteTitulo = Color.fromARGB(150, 0, 0, 0);
  var fonteBotaoRelogio = Color.fromARGB(150, 0, 0, 0);
  var bordaBotaoPlay1 = Color.fromARGB(30, 0, 0, 0);
  var bordaBotaoPlay2 = Color.fromARGB(30, 0, 0, 0);
  var botaoPlay = Color.fromARGB(255, 239, 242, 247);

  int _percentual = 0;

  void changePeople() {
    setState(() {
      _percentual += 10;
      if (_percentual > 100) _percentual = 0;
    });
  }

  FaceRelogio updateRelogio() {
    //setState(() {
    return FaceRelogio(_percentual);
    //});
  }

  HomeScreen() {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: Color.fromARGB(255, 239, 242, 247),
      systemNavigationBarIconBrightness: Brightness.dark,
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: cor1,
        child: Column(children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(30, 55, 30, 0),
            child: Column(
              children: <Widget>[
                Stack(children: <Widget>[
                  CustomPaint(painter: FaceCisculo()),
                  CustomPaint(painter: FaceCisculo2()),
                ]),
                Container(
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
                        child: Container(
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.10),
                                spreadRadius: 1,
                                blurRadius: 7,
                                offset:
                                    Offset(5, 5), // changes position of shadow
                              ),
                            ],
                            color: Color.fromARGB(255, 255, 191, 0),
                            borderRadius: BorderRadius.all(Radius.circular(
                                    27.0) //         <--- border radius here
                                ),
                          ),
                          width: 70,
                          height: 70,
                        ),
                      ),
                      Column(
                        children: [
                          Container(
                            width: 200,
                            child: Text(
                              "Bem-Vindo",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                decoration: TextDecoration.none,
                                fontFamily: 'WorkSans-Thin',
                                fontSize: 20,
                                color: fonteTitulo,
                              ),
                            ),
                          ),
                          Container(
                            width: 200,
                            child: Text(
                              "Felipe Lima",
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  decoration: TextDecoration.none,
                                  fontFamily: 'WorkSans-Light',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 30,
                                  color: fonteTitulo),
                            ),
                          ),
                        ],
                      ),
                      Spacer(),
                      Container(
                        child: Icon(
                          Icons.more_vert,
                          color: fonteTitulo,
                          size: 28.0,
                          semanticLabel: 'Menu',
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 60, 0, 0),
                  child: Text(
                    "Ponto Eletrônico",
                    style: TextStyle(
                        decoration: TextDecoration.none,
                        fontFamily: 'WorkSans-Thin',
                        fontSize: 36,
                        color: fonteTitulo),
                  ),
                ),
                Container(
                  height: 460,
                  child: Padding(
                      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: Stack(
                        alignment: Alignment.center,
                        children: <Widget>[
                          Container(
                            child: DecoratedIcon(
                              Icons.play_arrow_rounded,
                              color: botaoPlay,
                              size: 390.0,
                              shadows: [
                                BoxShadow(
                                  blurRadius: 30.0,
                                  color: bordaBotaoPlay1,
                                ),
                                BoxShadow(
                                  blurRadius: 30.0,
                                  color: bordaBotaoPlay2,
                                  offset: Offset(0, 0.0),
                                ),
                              ],
                            ),
                          ),
                          GestureDetector(
                            child: Text(
                              "Iniciar",
                              style: TextStyle(
                                  decoration: TextDecoration.none,
                                  fontFamily: 'WorkSans-Thin',
                                  fontSize: 70,
                                  color: fonteBotaoRelogio),
                            ),
                            onTap: () {
                              changePeople();
                            },
                          ),
                          Container(
                            child: CustomPaint(painter: updateRelogio()),
                          ),
                        ],
                      )),
                ),
                Text(
                  "Inicio: 08:10",
                  style: TextStyle(
                      decoration: TextDecoration.none,
                      fontFamily: 'WorkSans-Thin',
                      fontSize: 36,
                      color: fonteBotaoRelogio),
                ),
                Text(
                  "Fim: 08:10",
                  style: TextStyle(
                      decoration: TextDecoration.none,
                      fontFamily: 'WorkSans-Thin',
                      fontSize: 36,
                      color: fonteBotaoRelogio),
                ),
              ],
            ),
          ),
          Spacer(),
          // BottomNavigationBar(
          //     fixedColor: Colors.black,
          //     backgroundColor: cor1,
          //     items: [
          //       BottomNavigationBarItem(
          //           icon: Icon(Icons.home),
          //           title: Text('Rélogio'),
          //           backgroundColor: Colors.red),
          //       BottomNavigationBarItem(
          //           icon: Icon(Icons.lightbulb),
          //           title: Text('Menu 1'),
          //           backgroundColor: Colors.red),
          //       BottomNavigationBarItem(
          //           icon: Icon(Icons.settings),
          //           title: Text('Config'),
          //           backgroundColor: Colors.red)
          //     ])
        ]));
  }
}

class FaceCisculo extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // Define a paint object
    final paint = Paint()
      ..style = PaintingStyle.fill
      ..strokeWidth = 3.0
      ..strokeCap = StrokeCap.round
      ..color = Color.fromARGB(180, 255, 255, 255);

    // Right eye
    canvas.drawCircle(Offset(-360, -70), 300, paint);
  }

  @override
  bool shouldRepaint(FaceCisculo oldDelegate) => false;
}

class FaceCisculo2 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // Define a paint object
    final paint = Paint()
      ..style = PaintingStyle.fill
      ..strokeWidth = 3.0
      ..strokeCap = StrokeCap.round
      ..color = Color.fromARGB(180, 255, 255, 255);

    // Right eye
    canvas.drawCircle(Offset(500, 510), 390, paint);
  }

  @override
  bool shouldRepaint(FaceCisculo2 oldDelegate) => false;
}
