
import 'package:bank_management_system_ui/view/Widget/common_button.dart';
import 'package:bank_management_system_ui/view/deposit_page.dart';
import 'package:flutter/material.dart';

class FirstDepositPage extends StatefulWidget {

  const FirstDepositPage({super.key});

  @override
  State<FirstDepositPage> createState() => _FirstDepositPageState();
}

class _FirstDepositPageState extends State<FirstDepositPage> {
  bool isActive = false;
  final TextEditingController firstDepositController = TextEditingController();


  final key = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.lightBlueAccent.shade100,
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Form(
              key: key,
              child: Column(children: [
                TextFormField(
                  controller: firstDepositController ,
                  keyboardType: TextInputType.number,

                  style:  const TextStyle(color: Colors.white),
                  decoration:
                  InputDecoration(
                      hintText: "Enter Your Deposit Amount",
                      hintStyle: const TextStyle(color: Colors.grey),
                      filled: true,
                      fillColor: Colors.black,
                      border:
                      OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: const BorderSide(color: Colors.grey, width: 2),
                      )),
                  validator: (value) {
                    if (value!.isEmpty ) {
                      return "Please Enter Your Deposit Amount";
                    } else {
                      return null;
                    }
                  },
                ),
              ],),
            ),
            const SizedBox(height: 20,),
            CommonButton(text: 'Submit',width: MediaQuery.sizeOf(context).width*.4,
              backgroundColor:isActive ? Colors.lightBlue:Colors.grey ,
              color:Colors.white,
              callback: (){
                if(key.currentState!.validate()){
                  double balance = double.parse(firstDepositController.text);
                  print(balance);
                  print("Success");
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>DepositPage(firstMainBalance:balance ,)));
                }
              },
            ),
          ],),
        ),
      ),
    );
  }
}
