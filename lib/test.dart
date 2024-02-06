import 'package:flutter/material.dart';

enum CategoryLabel { all, accessories, dress, top, jacket }

class TestW extends StatefulWidget {
  TestW({super.key});

  @override
  State<TestW> createState() => _TestWState();
}

class _TestWState extends State<TestW> {
  CategoryLabel selectedLabel = CategoryLabel.all;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          children: [
            Text('Categories'),
            Expanded(
              child: DropdownButtonFormField(
                value: selectedLabel,
                onChanged: (value) {},
                items: CategoryLabel.values
                    .map((e) => DropdownMenuItem(
                          child: Text(e.toString().split('.')[1].replaceFirst(
                              e.toString().split('.')[1][0],
                              e.toString().split('.')[1][0].toUpperCase())),
                          value: e,
                        ))
                    .toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
