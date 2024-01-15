import 'package:flutter/material.dart';

class NewExpense extends StatefulWidget {
  const NewExpense({Key? key}) : super(key: key);

  @override
  State<NewExpense> createState() {
    return _NewExpenseState();
  }
}

class _NewExpenseState extends State<NewExpense> {
  final _titleController = TextEditingController();
  final _numberController = TextEditingController();

  @override
  void dispose() {
    _numberController.dispose();
    _titleController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(17),
      child: Column(
        children: [
          TextField(
            maxLength: 55,
            decoration: const InputDecoration(
              labelText: 'Title',
            ),
            controller: _titleController,
          ),
          Row(
            children: [
              ElevatedButton(
                onPressed: () {
                  print(_titleController.text);
                },
                child: const Text('Save expense'),
              )
            ],
          ),
          TextField(
            maxLength: 50,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
              labelText: 'Number',
            ),
            controller: _numberController,
          ),
          Row(
            children: [
              ElevatedButton(
                onPressed: () {
                  print(_numberController.text);
                },
                child: const Text('Amount of Expense'),
              )
            ],
          )
        ],
      ),
    );
  }
}
