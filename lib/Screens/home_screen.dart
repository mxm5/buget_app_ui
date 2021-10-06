import 'package:buget_app_ui/data/data.dart';
import 'package:buget_app_ui/home_screen_widgets/category_chart.dart';
import 'package:buget_app_ui/home_screen_widgets/weekly_chart.dart';
import 'package:buget_app_ui/models/category_model.dart';
import 'package:buget_app_ui/models/expense_model.dart';
import 'package:buget_app_ui/utils/calculte_variables.dart';
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
                CalculateVariables calc = CalculateVariables(idx: idx);
                return CategoryChart(
                  category: calc.cat,
                  leftAmount: calc.leftA(),
                  maxAmount: calc.maxA(),
                  spentD: calc.spentA(),
                );
              }
            }, childCount: 1 + categories.length),
          ),
        ],
      ),
    );
  }
}
