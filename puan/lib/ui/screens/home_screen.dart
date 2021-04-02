import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Ponto Eletrônico",
              style: TextStyle(
                  decoration: TextDecoration.none,
                  fontFamily: 'Raleway',
                  fontSize: 40,
                  color: Colors.red[300]),
            ),
            Container(
              height: 520,
              child: Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: Stack(
                    alignment: Alignment.center,
                    children: <Widget>[
                      Container(
                        child: Icon(
                          Icons.play_arrow_rounded,
                          color: Colors.red[100],
                          size: 400.0,
                        ),
                      ),
                      Text(
                        "Iniciar",
                        style: TextStyle(
                            decoration: TextDecoration.none,
                            fontFamily: 'Raleway',
                            fontSize: 80,
                            color: Colors.red[300]),
                      ),
                      Container(
                        child: CustomPaint(painter: FaceOutlinePainter()),
                      )
                    ],
                  )),
            )
          ],
        ));
  }
}

class FaceOutlinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // Define a paint object
    final paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 5.0
      ..strokeCap = StrokeCap.round
      ..color = Colors.red[100];

    final paintBlue = Paint()
      ..style = PaintingStyle.fill
      ..strokeWidth = 10.0
      ..strokeCap = StrokeCap.round
      ..color = Colors.blue;

    // // Left eye
    // canvas.drawRRect(
    //   RRect.fromRectAndRadius(Rect.fromLTWH( 0, 100, 100), Radius.circular(20)),
    //   paint,
    // );
    //

    // canvas.drawOval(
    //   Rect.fromLTWH(-230, -230, 460, 460),
    //   paintBlue,
    // );

    var Tangente = new List<double>();
    Tangente.add(0.0175);
    Tangente.add(0.0349);
    Tangente.add(0.0524);
    Tangente.add(0.0699);
    Tangente.add(0.0875);
    Tangente.add(0.1051);
    Tangente.add(0.1228);
    Tangente.add(0.1405);
    Tangente.add(0.1584);
    Tangente.add(0.1763);
    Tangente.add(0.1944);
    Tangente.add(0.2126);
    Tangente.add(0.2309);
    Tangente.add(0.2493);
    Tangente.add(0.2679);
    Tangente.add(0.2867);
    Tangente.add(0.3057);
    Tangente.add(0.3249);
    Tangente.add(0.3443);
    Tangente.add(0.364);
    Tangente.add(0.3839);
    Tangente.add(0.404);
    Tangente.add(0.4245);
    Tangente.add(0.4452);
    Tangente.add(0.4663);
    Tangente.add(0.4877);
    Tangente.add(0.5095);
    Tangente.add(0.5317);
    Tangente.add(0.5543);
    Tangente.add(0.5774);
    Tangente.add(0.6009);
    Tangente.add(0.6249);
    Tangente.add(0.6494);
    Tangente.add(0.6745);
    Tangente.add(0.7002);
    Tangente.add(0.7265);
    Tangente.add(0.7536);
    Tangente.add(0.7813);
    Tangente.add(0.8098);
    Tangente.add(0.8391);
    Tangente.add(0.8693);
    Tangente.add(0.9004);
    Tangente.add(0.9325);
    Tangente.add(0.9657);
    Tangente.add(1);
    Tangente.add(1.0355);
    Tangente.add(1.0724);
    Tangente.add(1.1106);
    Tangente.add(1.1504);
    Tangente.add(1.1918);
    Tangente.add(1.2349);
    Tangente.add(1.2799);
    Tangente.add(1.327);
    Tangente.add(1.3764);
    Tangente.add(1.4281);
    Tangente.add(1.4826);
    Tangente.add(1.5399);
    Tangente.add(1.6003);
    Tangente.add(1.6643);
    Tangente.add(1.7321);
    Tangente.add(1.804);
    Tangente.add(1.8807);
    Tangente.add(1.9626);
    Tangente.add(2.0503);
    Tangente.add(2.1445);
    Tangente.add(2.246);
    Tangente.add(2.3559);
    Tangente.add(2.4751);
    Tangente.add(2.6051);
    Tangente.add(2.7475);
    Tangente.add(2.9042);
    Tangente.add(3.0777);
    Tangente.add(3.2709);
    Tangente.add(3.4874);
    Tangente.add(3.7321);
    Tangente.add(4.0108);
    Tangente.add(4.3315);
    Tangente.add(4.7046);
    Tangente.add(5.1446);
    Tangente.add(5.6713);
    Tangente.add(6.3138);
    Tangente.add(7.1154);
    Tangente.add(8.1443);
    Tangente.add(9.5144);
    Tangente.add(11.4301);
    Tangente.add(14.3007);
    Tangente.add(19.0811);
    Tangente.add(28.6363);
    Tangente.add(57.29);

    var Cosseno = new List<double>();
    Cosseno.add(1);
    Cosseno.add(0.9998);
    Cosseno.add(0.9994);
    Cosseno.add(0.9986);
    Cosseno.add(0.9976);
    Cosseno.add(0.9962);
    Cosseno.add(0.9945);
    Cosseno.add(0.9925);
    Cosseno.add(0.9903);
    Cosseno.add(0.9877);
    Cosseno.add(0.9848);
    Cosseno.add(0.9816);
    Cosseno.add(0.9781);
    Cosseno.add(0.9744);
    Cosseno.add(0.9703);
    Cosseno.add(0.9659);
    Cosseno.add(0.9613);
    Cosseno.add(0.9563);
    Cosseno.add(0.9511);
    Cosseno.add(0.9455);
    Cosseno.add(0.9397);
    Cosseno.add(0.9336);
    Cosseno.add(0.9272);
    Cosseno.add(0.9205);
    Cosseno.add(0.9135);
    Cosseno.add(0.9063);
    Cosseno.add(0.8988);
    Cosseno.add(0.891);
    Cosseno.add(0.8829);
    Cosseno.add(0.8746);
    Cosseno.add(0.866);
    Cosseno.add(0.8572);
    Cosseno.add(0.848);
    Cosseno.add(0.8387);
    Cosseno.add(0.829);
    Cosseno.add(0.8192);
    Cosseno.add(0.809);
    Cosseno.add(0.7986);
    Cosseno.add(0.788);
    Cosseno.add(0.7771);
    Cosseno.add(0.766);
    Cosseno.add(0.7547);
    Cosseno.add(0.7431);
    Cosseno.add(0.7314);
    Cosseno.add(0.7193);
    Cosseno.add(0.7071);
    Cosseno.add(0.6947);
    Cosseno.add(0.682);
    Cosseno.add(0.6691);
    Cosseno.add(0.6561);
    Cosseno.add(0.6428);
    Cosseno.add(0.6293);
    Cosseno.add(0.6157);
    Cosseno.add(0.6018);
    Cosseno.add(0.5878);
    Cosseno.add(0.5736);
    Cosseno.add(0.5592);
    Cosseno.add(0.5446);
    Cosseno.add(0.5299);
    Cosseno.add(0.515);
    Cosseno.add(0.5);
    Cosseno.add(0.4848);
    Cosseno.add(0.4695);
    Cosseno.add(0.454);
    Cosseno.add(0.4384);
    Cosseno.add(0.4226);
    Cosseno.add(0.4067);
    Cosseno.add(0.3907);
    Cosseno.add(0.3746);
    Cosseno.add(0.3584);
    Cosseno.add(0.342);
    Cosseno.add(0.3256);
    Cosseno.add(0.309);
    Cosseno.add(0.2924);
    Cosseno.add(0.2756);
    Cosseno.add(0.2588);
    Cosseno.add(0.2419);
    Cosseno.add(0.225);
    Cosseno.add(0.2079);
    Cosseno.add(0.1908);
    Cosseno.add(0.1736);
    Cosseno.add(0.1564);
    Cosseno.add(0.1392);
    Cosseno.add(0.1219);
    Cosseno.add(0.1045);
    Cosseno.add(0.0872);
    Cosseno.add(0.0698);
    Cosseno.add(0.0523);
    Cosseno.add(0.0349);
    Cosseno.add(0.0175);
    Cosseno.add(0);

    var Seno = new List<double>();
    Seno.add(0);
    Seno.add(0.0175);
    Seno.add(0.0349);
    Seno.add(0.0523);
    Seno.add(0.0698);
    Seno.add(0.0872);
    Seno.add(0.1045);
    Seno.add(0.1219);
    Seno.add(0.1392);
    Seno.add(0.1564);
    Seno.add(0.1736);
    Seno.add(0.1908);
    Seno.add(0.2079);
    Seno.add(0.225);
    Seno.add(0.2419);
    Seno.add(0.2588);
    Seno.add(0.2756);
    Seno.add(0.2924);
    Seno.add(0.309);
    Seno.add(0.3256);
    Seno.add(0.342);
    Seno.add(0.3584);
    Seno.add(0.3746);
    Seno.add(0.3907);
    Seno.add(0.4067);
    Seno.add(0.4226);
    Seno.add(0.4384);
    Seno.add(0.454);
    Seno.add(0.4695);
    Seno.add(0.4848);
    Seno.add(0.5);
    Seno.add(0.515);
    Seno.add(0.5299);
    Seno.add(0.5446);
    Seno.add(0.5592);
    Seno.add(0.5736);
    Seno.add(0.5878);
    Seno.add(0.6018);
    Seno.add(0.6157);
    Seno.add(0.6293);
    Seno.add(0.6428);
    Seno.add(0.6561);
    Seno.add(0.6691);
    Seno.add(0.682);
    Seno.add(0.6947);
    Seno.add(0.7071);
    Seno.add(0.7193);
    Seno.add(0.7314);
    Seno.add(0.7431);
    Seno.add(0.7547);
    Seno.add(0.766);
    Seno.add(0.7771);
    Seno.add(0.788);
    Seno.add(0.7986);
    Seno.add(0.809);
    Seno.add(0.8192);
    Seno.add(0.829);
    Seno.add(0.8387);
    Seno.add(0.848);
    Seno.add(0.8572);
    Seno.add(0.866);
    Seno.add(0.8746);
    Seno.add(0.8829);
    Seno.add(0.891);
    Seno.add(0.8988);
    Seno.add(0.9063);
    Seno.add(0.9135);
    Seno.add(0.9205);
    Seno.add(0.9272);
    Seno.add(0.9336);
    Seno.add(0.9397);
    Seno.add(0.9455);
    Seno.add(0.9511);
    Seno.add(0.9563);
    Seno.add(0.9613);
    Seno.add(0.9659);
    Seno.add(0.9703);
    Seno.add(0.9744);
    Seno.add(0.9781);
    Seno.add(0.9816);
    Seno.add(0.9848);
    Seno.add(0.9877);
    Seno.add(0.9903);
    Seno.add(0.9925);
    Seno.add(0.9945);
    Seno.add(0.9962);
    Seno.add(0.9976);
    Seno.add(0.9986);
    Seno.add(0.9994);
    Seno.add(0.9998);
    Seno.add(1);

    final tamanhoRelogio = 200;
    final tamanhoSetaRelogio = tamanhoRelogio - 20;
    final intervalo = 6;

    if (1 == 1) {
      final p1 = Offset(Seno[90] * 170, Cosseno[90] * 170);
      final p2 = Offset(Seno[90] * 210, Cosseno[90] * 210);
      canvas.drawLine(p1, p2, paint);
    }

    if (1 == 1) {
      final p1 = Offset(Seno[0] * 170, Cosseno[0] * 170);
      final p2 = Offset(Seno[0] * 210, Cosseno[0] * 210);
      canvas.drawLine(p1, p2, paint);
    }
    if (1 == 1) {
      final p1 = Offset((Seno[0] * -1) * 170, (Cosseno[0] * -1) * 170);
      final p2 = Offset((Seno[0] * -1) * 210, (Cosseno[0] * -1) * 210);
      canvas.drawLine(p1, p2, paint);
    }

    if (1 == 1) {
      final p1 = Offset((Seno[90] * -1) * 170, (Cosseno[90] * -1) * 170);
      final p2 = Offset((Seno[90] * -1) * 210, (Cosseno[90] * -1) * 210);
      canvas.drawLine(p1, p2, paint);
    }

    for (var i = 0; i < Seno.length; i = i + intervalo) {
      final p1 =
          Offset(Seno[i] * tamanhoSetaRelogio, Cosseno[i] * tamanhoSetaRelogio);
      final p2 = Offset(Seno[i] * tamanhoRelogio, Cosseno[i] * tamanhoRelogio);
      canvas.drawLine(p1, p2, paint);
    }

    for (var i = 0; i < Seno.length; i = i + intervalo) {
      final p1 = Offset((Seno[i] * -1) * tamanhoSetaRelogio,
          (Cosseno[i] * -1) * tamanhoSetaRelogio); //Offset(Y, X);
      final p2 = Offset((Seno[i] * -1) * tamanhoRelogio,
          (Cosseno[i] * -1) * tamanhoRelogio); //Offset(W, H);
      canvas.drawLine(p1, p2, paint);
    }

    for (var i = 0; i < Seno.length; i = i + intervalo) {
      final p1 = Offset((Seno[i]) * tamanhoSetaRelogio,
          (Cosseno[i] * -1) * tamanhoSetaRelogio); //Offset(Y, X);
      final p2 = Offset((Seno[i]) * tamanhoRelogio,
          (Cosseno[i] * -1) * tamanhoRelogio); //Offset(W, H);
      canvas.drawLine(p1, p2, paint);
    }

    for (var i = 0; i < Seno.length; i = i + intervalo) {
      final p1 = Offset((Seno[i] * -1) * tamanhoSetaRelogio,
          (Cosseno[i]) * tamanhoSetaRelogio); //Offset(Y, X);
      final p2 = Offset((Seno[i] * -1) * tamanhoRelogio,
          (Cosseno[i]) * tamanhoRelogio); //Offset(W, H);
      canvas.drawLine(p1, p2, paint);
    }

    // for (var i = 0; i < Tangente.length; i+=10) {
    //       final p1 = Offset(0, 0);
    //       final p2 = Offset(Tangente[i]*-1000,-1000);
    //       canvas.drawLine(p1,p2, paint);
    // }

    // for (var i = 0; i < Tangente.length; i+=10) {
    //       final p1 = Offset(0, 0);
    //       final p2 = Offset((Tangente[i]*-1)*1000,1000);
    //       canvas.drawLine(p1,p2, paint);
    // }

    //   for (var i = 0; i < Tangente.length; i+=10) {
    //       final p1 = Offset(0, 0);
    //       final p2 = Offset(1000,(Tangente[i]*-1)*1000);
    //       canvas.drawLine(p1,p2, paint);
    // }

    // final p4 = Offset( 0);
    // final p5 = Offset(699, 1000);
    //  canvas.drawLine(p4,p5, paint);

    // // Right eye
    // canvas.drawOval(
    //   Rect.fromLTWH(- 120, 0, 100, 100),
    //   paint,
    // );
    // // Mouth
    // final mouth = Path();
    // mouth.moveTo(size.width * 0.8, size.height * 0.6);

    // mouth.arcToPoint(
    //   Offset(size.width * 0.2, size.height * 0.6),
    //   radius: Radius.circular(150),
    // );

    // mouth.arcToPoint(
    //   Offset(size.width * 0.8, size.height * 0.6),
    //   radius: Radius.circular(200),
    //   clockwise: false,
    // );

    // canvas.drawPath(mouth, paint);
  }

  @override
  bool shouldRepaint(FaceOutlinePainter oldDelegate) => false;
}
