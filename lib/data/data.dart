import 'dart:math';

import 'package:buget_app_ui/models/category_model.dart';
import 'package:buget_app_ui/models/expense_model.dart';

final rand = Random();

final List<double> weeklySpending = [
  rand.nextDouble() * 10000,
  rand.nextDouble() * 10000,
  rand.nextDouble() * 10000,
  rand.nextDouble() * 10000,
  rand.nextDouble() * 10000,
  rand.nextDouble() * 10000,
  rand.nextDouble() * 10000,
];



_generateExpenses() {
  List<Expense> expenses = [
    Expense(name: 'زغالسنگ', cost: rand.nextDouble() * 90),
    Expense(name: 'آهن', cost: rand.nextDouble() * 90),
    Expense(name: 'شکر', cost: rand.nextDouble() * 90),
    Expense(name: 'روغن', cost: rand.nextDouble() * 90),
    Expense(name: 'چوب', cost: rand.nextDouble() * 90),
    Expense(name: 'مس', cost: rand.nextDouble() * 90),
  ];
  return expenses;
}

List<Category> categories = [
  Category(name: 'غذا', maxAmount: 450, expenses: _generateExpenses()),
  Category(name: 'لباس', maxAmount: 500, expenses: _generateExpenses()),
  Category(name: 'لوازم منزل', maxAmount: 600, expenses: _generateExpenses()),
  Category(
      name: 'سرگرمی', maxAmount: 330, expenses: _generateExpenses()),
  Category(
      name: 'حمل و نقل', maxAmount: 500, expenses: _generateExpenses()),
  Category(name: 'تعمیرات', maxAmount: 1000, expenses: _generateExpenses()),
];
