import 'package:burger_home/screens/ad-details/widgets/custom-app-bar.dart';
import 'package:burger_home/screens/edit-item/widgets/custom-parent-container.dart';
import 'package:flutter/material.dart';

class ExpenseReportScreen extends StatelessWidget {
  static const id = '/report';
  const ExpenseReportScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Expense Report'),
      body: SafeArea(child: CustomParentContainer(children: [])),
    );
  }
}
