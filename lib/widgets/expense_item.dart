import 'package:expense_tracker/models/expense.dart';
import 'package:flutter/material.dart';

class ExpenseItem extends StatelessWidget {
  const ExpenseItem(this.expense, {super.key});
  final Expense expense;
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        children: [
          Text(expense.title),
          const SizedBox(height: 5),
          Row(
            children: [
              Text(
                '\$${expense.amount.toStringAsFixed(2)}',
              ),
              const Spacer(),
              Row(
                children: [
                  Icon(
                    categoryIcon[expense.category],
                  ),
                  const SizedBox(
                    width: 8,
                  ),
                  Text(
                    expense.formattedDate.toString(),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
