import 'package:bank_management_system_ui/model/user_detail_function.dart';
import 'package:bank_management_system_ui/view/Widget/common_appbar.dart';
import 'package:bank_management_system_ui/view/Widget/common_text.dart';
import 'package:flutter/material.dart';

class WithdrawPage extends StatefulWidget {
  const WithdrawPage({super.key});

  @override
  State<WithdrawPage> createState() => _WithdrawPageState();
}

class _WithdrawPageState extends State<WithdrawPage> {
  TextEditingController withDrawController = TextEditingController();
  final key = GlobalKey<FormState>();
  List<double> withDrawList = [0];
  double withdrawAmount=0;
  setWithdrawAmount() {
    UserInformation userInput = UserInformation("Rimu", 33, 700);
    withdrawAmount = double.parse(withDrawController.text.toString());
    double withdrawData = userInput.withdraw(withdrawAmount);
    print(withdrawData);
    withDrawList.add(withdrawData);
    setState(() {});
  }


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: [
              const CommonAppBar(),
              const SizedBox(height: 30,),
              const CommonText(text: "Enter Your Withdraw Amount",color: Colors.white,fontSize: 20,),
              const SizedBox(height: 19,),
              Form(
                  key: key,
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    keyboardAppearance: Brightness.dark,
                    style: const TextStyle(color: Colors.white),
                    controller: withDrawController,
                    decoration: InputDecoration(
                      fillColor: Colors.grey,
                      filled: true,
                      labelText: 'Input Amount',
                      labelStyle: const TextStyle(color: Colors.white),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white)),
                      enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white)),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Please Enter Amount";
                      } else {
                        return null;
                      }
                    },
                  )),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                height: MediaQuery.sizeOf(context).height * .07,
                width: MediaQuery.sizeOf(context).width * .6,
                child: ElevatedButton(
                    onPressed: () {
                      var isValid = key.currentState!.validate();
                      double myAmount = double.parse(withDrawController.text);
                      if (isValid && myAmount<700) {
                        setWithdrawAmount();
                      } else if (myAmount <0) {
                        print("Please Enter Positive Amount");
                      }else{
                        print("error");
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              bottomRight: Radius.circular(20))),
                    ),
                    child: const Center(
                        child: Text(
                          "submit",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        ))),
              ),
              const SizedBox(
                height: 30,
              ),
              Card(
                  elevation: 10,
                  shadowColor: Colors.white,
                  child: SizedBox(
                    height: MediaQuery.sizeOf(context).height * .2,
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const CommonText(text: 'Your new amount',fontSize: 30,),
                     //  Text( withDrawController.toString()),
                        Text(
                          withDrawList.last.toString(),
                          style: const TextStyle(fontSize: 20),
                        ),
                      ],
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
