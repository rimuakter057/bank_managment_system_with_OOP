
import 'package:bank_management_system_ui/model/service_name.dart';
import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {

  const CustomContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height * .1,
      width: MediaQuery.sizeOf(context).width * .4,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: serviceList[4].serviceColor,
          boxShadow: const [
            BoxShadow(
              blurRadius: 8,
              spreadRadius: 3,
              offset: Offset(3, 3),
              color: Colors.white,
            )
          ]),
      child: Center(
        child:Text( serviceList[0].serviceName,style:const TextStyle(
          fontSize: 40,
          fontWeight: FontWeight.bold,
          color: Colors.white
        ),),
      ),
    );
  }
}