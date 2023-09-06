import 'package:flutter/material.dart';
import 'package:project/presentation/screens/index.dart';
import 'package:project/presentation/styles.dart';
import 'package:project/presentation/widgets/bottom_button.dart';

class PaymentSuccessScreen extends StatelessWidget {
  const PaymentSuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          "Заказ оплачен",
          style: MyTextStyles.textStyle4.copyWith(
            fontWeight: FontWeight.w500,
            color: Colors.black,
          ),
          textAlign: TextAlign.center,
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 23),
          child: Column(
            children: [
              const Spacer(
                flex: 122,
              ),
              Container(
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: MyColors.color10,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Image.asset(
                    "assets/icon_party.png",
                    width: 44,
                    height: 44,
                  ),
                ),
              ),
              const SizedBox(
                height: 32,
              ),
              Text(
                "Ваш заказ принят в работу",
                style: MyTextStyles.textStyle5.copyWith(
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "Подтверждение заказа №104893 может занять некоторое время (от 1 часа до суток). Как только мы получим ответ от туроператора, вам на почту придет уведомление.",
                style: MyTextStyles.textStyle2.copyWith(
                  fontWeight: FontWeight.w400,
                  color: MyColors.color4,
                ),
                textAlign: TextAlign.center,
              ),
              const Spacer(
                flex: 234,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomButton(
        title: 'Супер!',
        onPressed: () {
          Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(builder: (context) => HotelScreen()),
            (route) => false, // 이 조건을 만족할 때까지 모든 화면을 pop
          );
        },
      ),
    );
  }
}
