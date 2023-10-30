import 'package:expense_app/expense.dart';
import 'package:flutter/material.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() {
    return _ExpensesState();
  }
}

class _ExpensesState extends State<Expenses> {
 final List <Expense> _registeredExpenses = [
  Expense(title: 'Flutter Course now', amount: 69.247, date: DateTime.now(), category: Category.work),

  Expense(title: 'Cinema', amount: 79, date: DateTime.now(), category: Category.travel)
 ]

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [Text('hello there'), Text('Expenses list....')],
      ),
    );
  }
}
