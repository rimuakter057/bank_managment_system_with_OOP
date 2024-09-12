

import 'package:bank_management_system_ui/view/CreatAcountPage/first_deposit_page.dart';
import 'package:bank_management_system_ui/view/Widget/common_button.dart';
import 'package:flutter/material.dart';

//question:1 coustom textfield validator use parini
// 2. 2 ta textfield ar condition manlei backcround change hobe
//3. textformfield ar onchange ar operator condition < chara ney na


class LogInPage extends StatefulWidget {
  const LogInPage({super.key});

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  bool isActive = false;
  final TextEditingController cardController = TextEditingController();
  final TextEditingController pinController = TextEditingController();

  final key = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(children: [
                Form(
                    key: key,
                    child: Column(children: [
                      // 1. validator use parini
                    /*  CustomTextField(validator: (String ) {
                        if (String!.toString().isEmpty){
                          return "card number";
                        }else{
                          return null;
                        }
                      },),*/

                      TextFormField(
                        maxLength: 16,
                        controller: pinController,
                        onChanged: (value){
                          if (value.length > 15){
                            setState(() {
                              isActive =true;
                            });
                          }else if (value.length < 16  ){
                            setState(() {
                              isActive =false;
                            });
                          }
                        },
                      keyboardType: TextInputType.number,

                      style:  const TextStyle(color: Colors.white),
                      decoration:
                          InputDecoration(
                            hintText: "Enter Your Card Number",
                              hintStyle: TextStyle(color: Colors.grey),
                              filled: true,
                              fillColor: Colors.black,
                              border:
                                  OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5),
                                    borderSide: const BorderSide(color: Colors.grey, width: 2),
                                  )),
                                   validator: (value) {
                                 if (value!.isEmpty ) {
                              return "Please Enter Your Card Number";
                                      } else {
                                     return null;
                                       }
                                       },

                    ),

                      const SizedBox(height: 20,),

                      TextFormField(
                        maxLength: 4,
                        controller: cardController,
                        onChanged: (value){
                          if (value.length > 3){
                            setState(() {
                              isActive =true;
                            });
                          }else if (value.length<4  ){
                            setState(() {
                              isActive =false;
                            });
                          }
                        },
                        keyboardType: TextInputType.number,
                        style:  const TextStyle(color: Colors.white),
                        decoration:
                        InputDecoration(
                            filled: true,
                            fillColor: Colors.black,
                            hintText: "Enter Your Pin Number",
                            hintStyle: const TextStyle(color: Colors.grey),
                            border:
                            OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: const BorderSide(color: Colors.grey, width: 2),
                            )),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Please Enter Your Card Number";
                          } else {
                            return null;
                          }
                        },

                      ),


                    ],),
                ),

            const SizedBox(height: 20,),
            // 2. 2 ta textfield ar condition manlei backcround change hobe
            CommonButton(text: 'Submit',width: MediaQuery.sizeOf(context).width*.4,
              backgroundColor:isActive ? Colors.lightBlue:Colors.grey ,
              color:Colors.white,
              callback: (){
                if(key.currentState!.validate()){
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>FirstDepositPage()));
                }
              },
            ),
          ],),
        ),
      ),
    );
  }
}


