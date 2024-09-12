

import 'package:flutter/material.dart';

class ServiceName{
  final String serviceName;
  final Color serviceColor;
  ServiceName ({required this.serviceName,required this.serviceColor});
}

final List <ServiceName> serviceList = [
  ServiceName(serviceName: "Deposit", serviceColor:const Color(0xFFDD2C00) ),
  ServiceName(serviceName: "Withdraw", serviceColor:const Color(0xFF4DD0E1) ),
  ServiceName(serviceName: "Fast Cash", serviceColor: const Color(0xFFEC407A),),
  ServiceName(serviceName: "Pin Change", serviceColor: const Color(0xFFDD2C00) ),
  ServiceName(serviceName: "Balance Enquiry", serviceColor:const Color(0xFF4DD0E1) ),
  ServiceName(serviceName: "Exit", serviceColor:const Color(0xFFDD2C00)  ),
];