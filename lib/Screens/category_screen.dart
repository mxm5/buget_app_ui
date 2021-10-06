import 'package:buget_app_ui/catagory_screen_widgets/radial_chart.dart';
import 'package:buget_app_ui/models/category_model.dart';
import 'package:buget_app_ui/models/expense_model.dart';
import 'package:buget_app_ui/utils/persian.dart';
import 'package:buget_app_ui/widgets/general/build_appbar.dart';
import 'package:buget_app_ui/widgets/general/chart.dart';
import 'package:flutter/material.dart';

class CategoryScreen extends StatefulWidget {
  final String maxAmount;
  final String leftAmount;
  final Category category;
  final double spent;
  final double purePercent;
  final double leftD;

  CategoryScreen({
    this.maxAmount,
    this.category,
    this.leftAmount,
    this.spent,
  })  : purePercent = ((category.maxAmount - spent) / category.maxAmount),
        leftD = (category.maxAmount - spent);

  @override
  _CategoryScreenState createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> with persianNumericHelperMixin{
  Color chartColor(double indexPercentage) {
    if (indexPercentage < 0.25) {
      return Colors.red;
    } else if (indexPercentage < 0.45) {
      return Colors.yellow[800];
    }
    return Colors.green;
  }

  @override
  // TODO: implement widget????????
//  CategoryScreen get widget => widget.leftAmount;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children:
              List.generate(1 + widget.category.expenses.length, (int idx) {
            if (idx == 0) {
              return _buildCircularGraph();
            } else {
              final Expense expense = widget.category.expenses[idx-1];
              return Chart(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Text(expense.name),
                      Text('-'+persianNumber((expense.cost*100).toInt().toString()),style: TextStyle(color: Colors.red ,fontWeight: FontWeight.w600,),),
                    ],
                  ),
                ),
              );
            }
          }),
        ),
      ),
    );
  }

  Chart _buildCircularGraph() {
    return Chart(
      height: 250,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: CustomPaint(
          foregroundPainter: RadialPainter(
              bgColor: Colors.grey[300],
              lineColor: chartColor(widget.purePercent),
              lineWidth: 13,
              purePercentage: widget.purePercent),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  widget.leftAmount + ' / ' + widget.maxAmount,
                  style: TextStyle(fontWeight: FontWeight.w900, fontSize: 20),
                ),
                Text(
                  widget.category.name,
                  style: TextStyle(fontWeight: FontWeight.w900, fontSize: 20),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
