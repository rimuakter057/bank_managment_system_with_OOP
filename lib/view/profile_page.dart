import 'package:bank_management_system_ui/model/user_detail_function.dart';
import 'package:bank_management_system_ui/view/Widget/common_text.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

List<dynamic> profileList = [];

  profileInformation(){
    UserInformation profileInformation = UserInformation("Rimu", 33,4000);
     var profileData = profileInformation.displayHolder();
     print(profileData);

    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.lightBlueAccent.shade100,
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(40.0),
              child: Column(
                children: [
                  GestureDetector(
                    onTap :(){
                      profileInformation();
                    },
                    child: Card(
                      elevation: 8,
                      shadowColor: Colors.lightBlue,
                      child: SizedBox(
                        height: MediaQuery.sizeOf(context).height*0.2,
                        width: MediaQuery.sizeOf(context).width*0.3,
                       child: const Padding(
                         padding: EdgeInsets.all(20.0),
                         child: CommonText(text: 'Show Account Information',fontSize: 16,
                         color: Colors.black,fontWeight: FontWeight.bold,
                         ),
                       ),

                      ),
                    ),
                  ),
                  const SizedBox(height: 20,),
                  Card(
                    elevation: 8,
                    shadowColor: Colors.grey,
                    child: SizedBox(
                      height: MediaQuery.sizeOf(context).height*0.4,
                      width: MediaQuery.sizeOf(context).width,
                      child:Center(child: Text("fggg")),

                     // Text(profileList.toList().toString()) ,

                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
