import 'package:buget_app_ui/data/data.dart';
import 'package:buget_app_ui/models/category_model.dart';
import 'package:buget_app_ui/models/expense_model.dart';
import 'package:buget_app_ui/utils/persian.dart';

class CalculateVariables with persianNumericHelperMixin {
  final int idx;
  final Category cat;

  CalculateVariables({
    this.idx,
  }) : cat = categories[idx - 1];

  String maxA() {
    return persianNumber(cat.maxAmount.toStringAsFixed(0));
  }

  double spentA() {
    double spentD = 0;
    cat.expenses.forEach((Expense expense) {
      spentD = spentD + expense.cost;
    });
    return spentD;
  }

  String leftA() {
    double spentD = spentA();
    return persianNumber((cat.maxAmount - spentD).toInt().toString());
  }


}
