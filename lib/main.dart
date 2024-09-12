
import 'package:bank_management_system_ui/view/CreatAcountPage/first_deposit_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const  BankManagementSystemUi());
}
class BankManagementSystemUi extends StatelessWidget {
  const BankManagementSystemUi({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstDepositPage (),
    );
  }
}


