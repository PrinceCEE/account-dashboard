import 'package:dashboard/config/data.dart';
import 'package:flutter/material.dart';
import 'pie_chart.dart';

class ExpenseSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.only(right: 20, left: 20, bottom: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Monthly Expenses",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Container(
                child: Row(
                  children: [
                    Container(
                      height: 35,
                      width: 35,
                      decoration: BoxDecoration(
                        color: primaryColor,
                        boxShadow: customShadow,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Center(
                        child: Icon(Icons.keyboard_arrow_left),
                      ),
                    ),
                    SizedBox(width: 15),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: primaryColor,
                        boxShadow: customShadow,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Center(
                        child: Icon(Icons.keyboard_arrow_right),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        Row(
          children: [
            Expanded(
              flex: 5,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: expenses
                      .map(
                        (value) => Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Row(
                            children: [
                              CircleAvatar(
                                radius: 5,
                                backgroundColor:
                                    pieColors[expenses.indexOf(value)],
                              ),
                              SizedBox(width: 5),
                              Text(
                                value["name"],
                                style: TextStyle(fontSize: 18),
                              )
                            ],
                          ),
                        ),
                      )
                      .toList(),
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: PieChart(),
            ),
          ],
        ),
      ],
    );
  }
}
