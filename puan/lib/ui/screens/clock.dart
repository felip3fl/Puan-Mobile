import 'package:intl/intl.dart';

import 'time.dart';

class PointControll {
  List markTime = [];
  List _markClockType = [];

  PointControll() {
    startMarkClockType();
  }

  final point = new Point();

  void startMarkClockType() {
    _markClockType.add("Entrada");
    _markClockType.add("Almoço");
    _markClockType.add("Saída");
  }

  var orderClockType = 0;

  void markPoint() {
    Map<String, dynamic> newToDo = Map();
    var now = DateTime.now();
    newToDo["title"] = _markClockType[orderClockType];
    newToDo["time"] = DateFormat('Hm').format(now);
    markTime.add(newToDo);

    // point.markClockType = "";
    // point.time = DateFormat('Hm').format(now);

    this.addClockTypeOrder();
    return;
  }

  void resetClockTypeOrder() {
    orderClockType = 0;
  }

  void addClockTypeOrder() {
    orderClockType++;
    if (orderClockType >= 3) this.resetClockTypeOrder();
  }
}
