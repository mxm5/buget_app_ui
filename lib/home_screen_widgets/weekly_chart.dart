import 'package:buget_app_ui/data/data.dart';
import 'package:buget_app_ui/home_screen_widgets/vertical_bar_chart.dart';
import 'package:buget_app_ui/widgets/general/chart.dart';
import 'package:flutter/material.dart';


class WeeklyChart extends StatelessWidget {

  double highest=0;

  @override
  Widget build(BuildContext context) {

    weeklySpending.forEach( (double num ){
      if (num>highest){
        highest = num;
      }
    });

//    print(highest);
    return Chart(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[

            Text('مخارج بر اساس روز های هفته',style: TextStyle(fontWeight: FontWeight.w900 ,fontSize: 16),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.arrow_back),
                  onPressed: (){},
                ),
                Text(' ۱۰ فرودین ۱۳۹۹ - ۱۶ فروردین ۱۳۹۹',textDirection: TextDirection.rtl,),
                IconButton(
                  icon: Icon(Icons.arrow_forward),
                  onPressed: (){},
                ),
              ],
            ),
            Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: List.generate(7, (int idx){
                  List<String> weeksDay =['ش','ی','د','س','چ','پ','ج'];
                  return VerticalBarChart(spending: weeklySpending[idx],weekDay: weeksDay[idx],highest: highest,);
                })
            ),
          ],
        ),
      ),
    );
  }
}
