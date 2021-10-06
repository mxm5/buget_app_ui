import 'package:buget_app_ui/utils/persian.dart';
import 'package:flutter/material.dart';

class VerticalBarChart extends StatelessWidget with persianNumericHelperMixin {
  const VerticalBarChart({
    this.weekDay,this.spending,this.highest,this.barHeight=140
  }) ;

  final double barHeight;
  final double highest;
  final String weekDay;
  final double spending;
  double heightOfBar() => barHeight*(spending/highest);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        Text('-'+persianNumber(spending.toStringAsFixed(0)),style: TextStyle(fontSize: 10,letterSpacing:0),),
        Container(
          height:heightOfBar() ,
          color: Colors.green,
          width: 14,
        ),
        Text(weekDay,style: TextStyle(fontSize: 10),)
      ],
    );
  }
}
