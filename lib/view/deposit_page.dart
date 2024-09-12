import 'package:bank_management_system_ui/model/user_detail_function.dart';
import 'package:bank_management_system_ui/view/Widget/common_appbar.dart';
import 'package:bank_management_system_ui/view/Widget/common_text.dart';
import 'package:flutter/material.dart';

//  required data ke initstate a call korabo ,then oita main balance a pass korbo

class DepositPage extends StatefulWidget {
 double firstMainBalance;
 DepositPage({super.key, required this.firstMainBalance,});

  @override
  State<DepositPage> createState() => _DepositPageState();
}

class _DepositPageState extends State<DepositPage> {
  final TextEditingController firstDepositController = TextEditingController();
  double balance=0;
  @override
  void initState() {
    balance =widget.firstMainBalance;
    // TODO: implement initState
    super.initState();
  }

  final key = GlobalKey<FormState>();
  TextEditingController depositController = TextEditingController();

  List<double> depositList = [0];
   double depositAmount =0;
// add money for deposit
  setDepositAmount() {
    UserInformation userInformation = UserInformation("Rimu", 5, balance  );
     depositAmount = double.parse(depositController.text.toString());
    double data = userInformation.deposit(depositAmount) ?? 0;
    print(data);
    depositList.add(data);

    setState(() {});
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Column(
          children: [
            const CommonAppBar(),
            const SizedBox(
              height: 30,
            ),
            const CommonText(
              text: "Enter Your deposit Amount",
              color: Colors.white,
              fontSize: 20,
            ),
            const SizedBox(
              height: 19,
            ),

            // input value
            Form(
              key: key,
              child: TextFormField(
                controller: depositController,
                keyboardType: TextInputType.number,
                keyboardAppearance: Brightness.dark,
                style: const TextStyle(color: Colors.white),
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
                  if (value!.isEmpty  ) {
                    return "please enter value";
                  }
                  return null;
                },
              ),
            ),

            const SizedBox(
              height: 30,
            ),

            // submit button
            SizedBox(
              height: MediaQuery.sizeOf(context).height * .07,
              width: MediaQuery.sizeOf(context).width * .6,
              child: ElevatedButton(
                  onPressed: () {
                    var isValid = key.currentState!.validate();
                    double amount=double.parse(depositController.text);
                    print(depositAmount);
                    if (isValid && amount  > 0 ) {
                      setDepositAmount( );
                    } else {
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

            // Show Information
            Card(
                elevation: 10,
                shadowColor: Colors.white,
                child: SizedBox(
                  height: MediaQuery.sizeOf(context).height * .2,
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const CommonText(
                        text: 'Your new amount',
                        fontSize: 30,
                      ),

                      Text(
                      depositList.last.toString(),
                        style: const TextStyle(fontSize: 20),
                      ),
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
