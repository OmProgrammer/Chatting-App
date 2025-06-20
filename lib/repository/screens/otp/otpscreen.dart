import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:messengere/domain/constants/appcolors.dart';
import 'package:messengere/repository/screens/profile/profilescreen.dart';
import 'package:messengere/repository/screens/widgets/uihelper.dart';
import 'package:pinput/pinput.dart';

class OTPScreen extends StatelessWidget {
  TextEditingController otpController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      textStyle: TextStyle(
        fontSize: 20,
        color: Theme.of(context).brightness == Brightness.dark
            ? Colors.white
            : Colors.black,
        fontWeight: FontWeight.w600,
      ),
      decoration: BoxDecoration(
        border: Border.all(color: Color.fromRGBO(234, 239, 243, 1)),
        borderRadius: BorderRadius.circular(7),
      ),
    );
    final focusedPinTheme = defaultPinTheme.copyDecorationWith(
      color: Theme.of(context).brightness == Brightness.dark
          ? AppColors.otpdarkmode
          : AppColors.otplightmode,
      border: Border.all(color: Color.fromRGBO(114, 178, 238, 1)),
      borderRadius: BorderRadius.circular(7),
    );

    final submittedPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration!.copyWith(
        color: Theme.of(context).brightness == Brightness.dark
            ? AppColors.otpdarkmode
            : AppColors.otplightmode,
      ),
    );
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
              text: "Enter Code",
              fontsize: 24,
              fontfamily: "bold",
              fontweight: FontWeight.bold,
            ),
            SizedBox(height: 5),
            UiHelper.CustomText(
              context: context,
              text: "We have sent you an SMS with the code ",
              fontsize: 14,
            ),
            UiHelper.CustomText(
              context: context,
              text: "to +62 1309 - 1710 - 1920 ",
              fontsize: 14,
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Pinput(
                onCompleted: (value){
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>ProfileScreen()));
                },
                autofocus: true,
                controller: otpController,
                defaultPinTheme: defaultPinTheme,
                focusedPinTheme: focusedPinTheme,
                submittedPinTheme: submittedPinTheme,
              ),
            ),
            SizedBox(height: 80,),

          ],
        ),
      ),
      floatingActionButton: TextButton(
        onPressed: () {},
        child: Text(
          "Resend OTP",
          style: TextStyle(
            fontSize: 16,
            color: Theme.of(context).brightness == Brightness.dark
                ? AppColors.otptextdarkmode
                : AppColors.otptextlightmode,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
