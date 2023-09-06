import 'package:flutter/material.dart';
import 'package:project/presentation/screens/index.dart';
import 'package:project/presentation/styles.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: MyColors.color1,
        scaffoldBackgroundColor: MyColors.color2,
        brightness: Brightness.light,
        appBarTheme: AppBarTheme(
            color: Colors.white,
            elevation: 0,
            foregroundColor: Colors.black,
            titleTextStyle: MyTextStyles.textStyle4.copyWith(
              color: Colors.black,
              fontWeight: FontWeight.w500,
            )),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: MyColors.color1,
            minimumSize: const Size(double.infinity, 48),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            textStyle: MyTextStyles.textStyle2.copyWith(
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
      home: const HotelScreen(),
      // home: PaymentSuccessPage(),
    );
  }
}
