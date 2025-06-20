import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:messengere/domain/constants/appthemes.dart';
import 'package:messengere/domain/constants/cubits/themecubits.dart';
import 'package:messengere/domain/constants/cubits/themestates.dart';
import 'package:messengere/repository/screens/onboarding/onboardingscreen.dart';
import 'package:messengere/repository/screens/otp/otpscreen.dart';

void main() {
  runApp( BlocProvider(
  create: (context) => ThemeCubit(),
  child: MyApp(),
));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return BlocBuilder<ThemeCubit, ThemeStates>(
  builder: (context, state) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Chat App',
      theme: state is LightThemeStates? AppThemes.lightTheme: AppThemes.darkTheme,
      home: OnBoardingScreen(),
      // home: OTPScreen(),
    );
  },
);
  }
}

