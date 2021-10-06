import 'package:buget_app_ui/data/data.dart';
import 'package:buget_app_ui/home_screen_widgets/category_chart.dart';
import 'package:buget_app_ui/home_screen_widgets/weekly_chart.dart';
import 'package:buget_app_ui/models/category_model.dart';
import 'package:buget_app_ui/models/expense_model.dart';
import 'package:buget_app_ui/utils/persian.dart';
import 'package:buget_app_ui/widgets/general/chart.dart';
import 'package:buget_app_ui/widgets/general/custom_sliver_app_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with persianNumericHelperMixin, persianAlphabeticHelperMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          CustomSliverAppBar(),
          SliverList(
            delegate:
            SliverChildBuilderDelegate((BuildContext context, int idx) {
              if (idx == 0) {
                return WeeklyChart(/* {weekRange} , {dataRange} */);
              } else {
                CalculateVariables calculate = CalculateVariables(idx: idx);
//                final Category category = categories[idx - 1];
//                final String maxAmount =
//                    persianNumber(category.maxAmount.toStringAsFixed(0));
//                double spentD = 0;
//                category.expenses.forEach((Expense expense) {
//                  spentD = spentD + expense.cost;
//                });
//                final String leftAmount = persianNumber(
//                    (category.maxAmount - spentD).toInt().toString());
//                final String left = '99';
                return CategoryChart(
                    category: calculate.category,
                    leftAmount: calculate.getLeftAmount(),
                    /*str*/
                    maxAmount: calculate.getMaxAmount(),
                    /*str*/
                    spentD: calculate.getSpentD() /*dbl*/);
              }
            }, childCount: 1 + categories.length),
          ),
        ],
      ),
    );
  }
}

class CalculateVariables with persianNumericHelperMixin {
//  CalculatorBrain({this.weight = 60, this.height = 180,}) :
//        _bmi = weight / pow(height / 100, 2);

  final int idx;
  final Category category;

  CalculateVariables({
    this.idx,
  }) : category = categories[idx - 1];

//void makeCategory() {
//  Category madeCategory = categories[idx - 1];
//   category=madeCategory;
//}

  String getMaxAmount() {
    return persianNumber(category.maxAmount.toStringAsFixed(0));
  }

  double getSpentD() {
    double spentD = 0;
    category.expenses.forEach((Expense expense) {
      spentD = spentD + expense.cost;
    });
    return spentD;
//    String leftAmount = persianNumber(
//        (category.maxAmount - spentD).toInt().toString());
  }

////                final String left ='99';
//

  String getLeftAmount() {
    double spentD = getSpentD();
    return persianNumber((category.maxAmount - spentD).toInt().toString());
  }
}
