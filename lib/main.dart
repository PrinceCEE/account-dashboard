import 'package:dashboard/config/data.dart';
import 'package:flutter/material.dart';
import 'widgets/header.dart';
import 'widgets/card_section.dart';
import 'widgets/expense_section.dart';

void main() {
  runApp(Homepage());
}

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: primaryColor,
        body: Column(
          children: [
            SizedBox(height: 20),
            Container(
              height: 120,
              child: WalletHeader(),
            ),
            Expanded(child: CardSection()),
            Expanded(child: ExpenseSection()),
          ],
        ),
      ),
      theme: ThemeData(fontFamily: 'Circular'),
      debugShowCheckedModeBanner: false,
    );
  }
}
