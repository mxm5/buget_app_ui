import 'package:buget_app_ui/Screens/category_screen.dart';
import 'package:buget_app_ui/models/category_model.dart';
import 'package:buget_app_ui/widgets/general/chart.dart';
import 'package:flutter/material.dart';

class CategoryChart extends StatelessWidget {
  const CategoryChart({
    Key key,
    @required this.category,
    @required this.leftAmount,
    @required this.maxAmount,
    @required this.spentD,
  }) : super(key: key);

  final Category category;
  final String leftAmount;
  final String maxAmount;
  final double spentD;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => CategoryScreen(
                      leftAmount: leftAmount,
                      maxAmount: maxAmount,
                      spent: spentD,
                  category: category,
                    )));
      },
      child: Chart(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 8, horizontal: 15),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Text(category.name),
                  Text(leftAmount + ' / ' + maxAmount + ''),
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: LayoutBuilder(
                  builder: (BuildContext context, BoxConstraints constraints) {
                    final widthAvail = constraints.maxWidth;
                    print(widthAvail);
                    int calculatedWidth =
                        (((category.maxAmount - spentD) / category.maxAmount) *
                                widthAvail)
                            .toInt();
                    int purePercent =
                        (((category.maxAmount - spentD) / category.maxAmount) *
                                100)
                            .toInt();
                    print(calculatedWidth);
                    return Stack(
                      children: <Widget>[
                        Container(
                          height: 20,
                          decoration: BoxDecoration(
                              color: Colors.grey[300],
                              borderRadius: BorderRadius.circular(14)),
                        ),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Text(
                                '+'+leftAmount + ' ',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w900),
                              )
                            ],
                          ),
                          height: 20,
                          width: calculatedWidth < 0
                              ? 35
                              : calculatedWidth < 25
                                  ? 39
                                  : calculatedWidth < 35
                                      ? 35.0
                                      : calculatedWidth.toDouble(),
//                                    width: 35,
                          decoration: BoxDecoration(
                              color: calculatedWidth < 0
                                  ? Colors.red
                                  : purePercent < 25
                                      ? Colors.red
                                      : purePercent < 45
                                          ? Colors.yellow[700]
                                          : Colors.green,
                              borderRadius: BorderRadius.circular(14)),
                        )
                      ],
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
