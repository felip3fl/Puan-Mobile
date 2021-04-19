import 'package:flutter/material.dart';
import 'package:puan/datas/Cosseno.dart';
import 'package:puan/datas/Seno.dart';

class FaceRelogio extends CustomPainter {

  var _porcentagem = 0;
  var _porcentagemTemp = 0.0;

  FaceRelogio(int porcentagem) {
    this._porcentagem = porcentagem;
  }

  @override
  void paint(Canvas canvas, Size size)  {

    final estiloNormal = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 3.0
      ..strokeCap = StrokeCap.round
      ..color = Color.fromARGB(255, 200, 200, 200);

    final estiloMarcado = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 3.0
      ..strokeCap = StrokeCap.round
      ..color = Color.fromARGB(255, 0, 0, 0);

    Cosseno cosseno = new Cosseno();
    Seno seno = new Seno();

    final tamanhoRelogio = 165;
    final tamanhoSetaRelogio = tamanhoRelogio - 15;
    final tamanhoSetaRelogio2 = tamanhoRelogio - 20;
    final tamanhoSetaRelogio3 = tamanhoRelogio + 5;
    final intervalo = 6;

    //0-25
    _porcentagemTemp = _porcentagem > 0 ? ((100 / 25) * _porcentagem) : 0; 
    for (var i = intervalo; i < seno.values.length; i = i + intervalo) {
      final p1 = Offset((seno.values[i]) * tamanhoSetaRelogio, (cosseno.values[i] * -1) * tamanhoSetaRelogio); //Offset(Y, X);
      final p2 = Offset((seno.values[i]) * tamanhoRelogio, (cosseno.values[i] * -1) * tamanhoRelogio); //Offset(W, H);

      var valor = (100 / seno.values.length) * i >= _porcentagemTemp;
      canvas.drawLine(p1, p2, valor ? estiloNormal : estiloMarcado);
    }

    //25-50
    _porcentagemTemp = _porcentagem > 25 ? ((100 / 25) * (_porcentagem-25)) : 0; 
    for (var i = intervalo; i < seno.values.length; i = i + intervalo) {
      final p1 = Offset(cosseno.values[i] * tamanhoSetaRelogio, seno.values[i] * tamanhoSetaRelogio);
      final p2 = Offset(cosseno.values[i] * tamanhoRelogio, seno.values[i] * tamanhoRelogio);

      var valor = (100 / seno.values.length) * i >= _porcentagemTemp;
      canvas.drawLine(p1, p2, valor ?  estiloNormal : estiloMarcado);
    }

    //50-75
    _porcentagemTemp = _porcentagem > 50 ? ((100 / 25) * (_porcentagem-50)) : 0; 
    for (var i = intervalo; i < seno.values.length; i = i + intervalo) {
      final p1 = Offset((seno.values[i] * -1) * tamanhoSetaRelogio, (cosseno.values[i]) * tamanhoSetaRelogio); //Offset(Y, X);
      final p2 = Offset((seno.values[i] * -1) * tamanhoRelogio, (cosseno.values[i]) * tamanhoRelogio); //Offset(W, H);

      var valor = (100 / seno.values.length) * i >= _porcentagemTemp;
      canvas.drawLine(p1, p2, valor ?  estiloNormal : estiloMarcado);
    }

    //75-100
    _porcentagemTemp = _porcentagem > 75 ? ((100 / 25) * (_porcentagem-75)) : 0; 
    for (var i = intervalo; i < seno.values.length; i = i + intervalo) {
      final p1 = Offset((cosseno.values[i] * -1) * tamanhoSetaRelogio,(seno.values[i] * -1) * tamanhoSetaRelogio,); //Offset(Y, X);
      final p2 = Offset((cosseno.values[i] * -1) * tamanhoRelogio, (seno.values[i] * -1) * tamanhoRelogio); //Offset(W, H);
      canvas.drawLine(p1, p2, estiloNormal);

      var valor = (100 / seno.values.length) * i >= _porcentagemTemp;
      canvas.drawLine(p1, p2, valor ?  estiloNormal : estiloMarcado);
    }

      canvas.drawLine(
      Offset((seno.values[0] * -1) * tamanhoSetaRelogio2, (cosseno.values[0] * -1) * tamanhoSetaRelogio2), 
      Offset((seno.values[0] * -1) * tamanhoSetaRelogio3, (cosseno.values[0] * -1) * tamanhoSetaRelogio3), 
      _porcentagem > 0 ? estiloMarcado : estiloNormal);

    canvas.drawLine(
      Offset(seno.values[90] * tamanhoSetaRelogio2,cosseno.values[90] * tamanhoSetaRelogio2), 
      Offset(seno.values[90] * tamanhoSetaRelogio3,cosseno.values[90] * tamanhoSetaRelogio3), 
      _porcentagem >= 25 ? estiloMarcado : estiloNormal);

    canvas.drawLine(
      Offset(seno.values[0] * tamanhoSetaRelogio2, cosseno.values[0] * tamanhoSetaRelogio2), 
      Offset(seno.values[0] * tamanhoSetaRelogio3, cosseno.values[0] * tamanhoSetaRelogio3), 
      _porcentagem >= 50 ? estiloMarcado : estiloNormal);

    canvas.drawLine(Offset(
      (seno.values[90] * -1) * tamanhoSetaRelogio2,(cosseno.values[90] * -1) * tamanhoSetaRelogio2), 
      Offset((seno.values[90] * -1) * tamanhoSetaRelogio3, (cosseno.values[90] * -1) * tamanhoSetaRelogio3), 
      _porcentagem >= 75 ? estiloMarcado : estiloNormal);

  }

  @override
  bool shouldRepaint(FaceRelogio oldDelegate) => true;
}
