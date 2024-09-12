import 'package:bank_management_system_ui/model/service_name.dart';
import 'package:bank_management_system_ui/view/HomePage/Widget/custom_container.dart';
import 'package:bank_management_system_ui/view/Widget/common_text.dart';
import 'package:flutter/material.dart';

//question 1: customContainer index ney ni
// question 2:ListView other page navigate parini

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent.shade100,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.account_circle,
                    color: Colors.black,
                    size: 80,
                  )),
              const CommonText(
                text: "Please Select Your Transactions",
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                child: ListView.separated(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: serviceList.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                        onTap: () {}, child: CustomContainer());
                  },
                  separatorBuilder: (context, index) =>
                      const SizedBox(height: 15),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
