import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:messengere/repository/screens/widgets/uihelper.dart';

import '../../../domain/constants/appcolors.dart';
import '../bottomnav/bottomnavigationscreen.dart';

class ProfileScreen extends StatelessWidget {
  TextEditingController firstnameController = TextEditingController();
  TextEditingController lastnameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).brightness == Brightness.dark
            ? AppColors.scaffolddark
            : AppColors.scaffoldlight,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(CupertinoIcons.back),
        ),
        title: UiHelper.CustomText(
          context: context,
          text: "Your Profile",
          fontsize: 18,
          fontweight: FontWeight.bold,
          fontfamily: "bold",
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Theme.of(context).brightness == Brightness.dark
                ? UiHelper.CustomImage(imgurl: "darkprofile.png")
                : UiHelper.CustomImage(imgurl: "lightprofile.png"),
            SizedBox(height: 30),
            UiHelper.CustomTextField(
              controller: firstnameController,
              text: "First Name (Required)",
              textinputtype: TextInputType.name,
              context: context,
              icondata: Icons.person
            ),
            SizedBox(height: 10),
            UiHelper.CustomTextField(
              controller: lastnameController,
              text: "Last Name (Required)",
              textinputtype: TextInputType.name,
              context: context,
              icondata:CupertinoIcons.person_2
            ),
          ],
        ),
      ),
      floatingActionButton:UiHelper.CustomButton(buttonname: "Save", callback:(){
        Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>BottomNavScreen()));
      }),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
