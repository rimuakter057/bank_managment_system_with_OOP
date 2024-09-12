import 'package:bank_management_system_ui/model/user_detail_function.dart';
import 'package:bank_management_system_ui/view/profile_page.dart';
import 'package:flutter/material.dart';

class CommonAppBar extends StatefulWidget {
  const CommonAppBar({super.key});

  @override
  State<CommonAppBar> createState() => _CommonAppBarState();
}

class _CommonAppBarState extends State<CommonAppBar> {

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_back,
              size: 30,
              color: Colors.white,
            )),
        IconButton(
            onPressed: () {


              Navigator.push(context,
                  MaterialPageRoute(builder: (context) =>    ProfilePage()));
            },
            icon: Icon(
              Icons.account_circle_outlined,
              size: 30,
              color: Colors.white,
            )),
      ],
    );
  }
}
