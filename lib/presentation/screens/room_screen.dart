import 'package:flutter/material.dart';
import 'package:project/data/hotel_data.dart';
import 'package:project/presentation/screens/index.dart';
import 'package:project/presentation/styles.dart';
import 'package:project/presentation/widgets/index.dart';
import 'package:provider/provider.dart';

class RoomScreen extends StatelessWidget {
  const RoomScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final hotelData = context.read<HotelData>();

    return Scaffold(
      appBar: AppBar(
        title: Text(
          hotelData.name,
          style: MyTextStyles.textStyle4,
        ),
      ),
      body: SafeArea(
        child: ListView.separated(
            padding: const EdgeInsets.symmetric(vertical: 8),
            itemBuilder: (context, index) {
              final roomData = hotelData.roomList.elementAt(index);
              return Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 16,
                    ),
                    ImagePageView(
                        imageList: roomData.imageUrlList.map((e) => Image.asset(
                              e,
                              fit: BoxFit.cover,
                            ))),
                    Padding(
                      padding: const EdgeInsets.all(16).copyWith(top: 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(
                            height: 8,
                          ),
                          Text(
                            roomData.name,
                            style: MyTextStyles.textStyle5.copyWith(
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          const OptionsWrapper(options: [
                            "Все включено",
                            "Кондиционер",
                          ]),
                          const SizedBox(
                            height: 8,
                          ),
                          Container(
                            padding: const EdgeInsets.symmetric(
                                    vertical: 5, horizontal: 10)
                                .copyWith(right: 2),
                            decoration: BoxDecoration(
                              color: MyColors.color1.withOpacity(0.1),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  "Подробнее о номере",
                                  style: MyTextStyles.textStyle2.copyWith(
                                    fontWeight: FontWeight.w500,
                                    color: MyColors.color1,
                                  ),
                                ),
                                const SizedBox(
                                  width: 2,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                          vertical: 5, horizontal: 9)
                                      .copyWith(right: 7),
                                  child: Image.asset(
                                      "assets/icon_arrow_forward.png"),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          PriceField(
                              value: roomData.price,
                              description: "за 7 ночей с перелётом"),
                          const SizedBox(
                            height: 16,
                          ),
                          ElevatedButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) =>
                                        const CheckinScreen()));
                              },
                              child: const Text("Выбрать номер"))
                        ],
                      ),
                    )
                  ],
                ),
              );
            },
            separatorBuilder: (context, index) => const SizedBox(
                  height: 8,
                ),
            itemCount: hotelData.roomList.length),
      ),
    );
  }
}
