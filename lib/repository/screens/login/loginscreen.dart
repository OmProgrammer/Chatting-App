import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:messengere/repository/screens/otp/otpscreen.dart';
import 'package:messengere/repository/screens/widgets/uihelper.dart';

import '../../../domain/constants/appcolors.dart';

class LoginScreen extends StatelessWidget {
  TextEditingController phoneController = TextEditingController();

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
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            UiHelper.CustomText(
              context: context,
              text: "Enter your phone number",
              fontsize: 24,
              fontweight: FontWeight.bold,
              fontfamily: "bold",
            ),
            SizedBox(height: 10),
            UiHelper.CustomText(
              context: context,
              text: "Please confirm your country code and enter ",
              fontsize: 14,
            ),
            UiHelper.CustomText(
              context: context,
              text: "your phone number ",
              fontsize: 14,
            ),
            SizedBox(height: 20),
            UiHelper.CustomTextField(
              controller: phoneController,
              text: "Phone Number",
              textinputtype: TextInputType.number,
              context: context,
              icondata: Icons.phone
            ),
          ],
        ),
      ),
      floatingActionButton: UiHelper.CustomButton(
        buttonname: "Continue",
        callback: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => OTPScreen()),
          );
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
