import 'package:flutter/material.dart';
import 'package:project/data/hotel_data.dart';
import 'package:project/presentation/screens/index.dart';
import 'package:project/presentation/styles.dart';
import 'package:project/presentation/widgets/index.dart';
import 'package:provider/provider.dart';

class HotelScreen extends StatelessWidget {
  const HotelScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final data = context.read<HotelData>();
    return Scaffold(
      appBar: AppBar(
        title: Text(data.name,
            style: MyTextStyles.textStyle4.copyWith(
              fontWeight: FontWeight.w500,
            )),
      ),
      body: _HotelScreenBody(
        name: data.name,
        imageUrlList: data.imageUrlList,
        options: data.options,
        information: data.information,
        tags: data.tags,
        rate: data.rate,
        price: data.price,
      ),
      bottomNavigationBar: BottomButton(
          title: "К выбору номера",
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => RoomScreen(),
              ),
            );
          }),
    );
  }
}

class _HotelScreenBody extends StatelessWidget {
  final String name;
  final Iterable<String> imageUrlList;
  final Iterable<String> options;
  final Iterable<String> tags;
  final Iterable<Map<String, dynamic>> information;
  final num rate;
  final num price;

  const _HotelScreenBody({
    super.key,
    required this.name,
    required this.imageUrlList,
    required this.options,
    required this.information,
    required this.tags,
    required this.rate,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        _TopCard(
          name: name,
          imageUrlList: imageUrlList,
          tags: tags,
          rate: rate,
          price: price,
        ),
        SizedBox(
          height: 16,
        ),
        _BottomCard(
          options: options,
          information: information,
        ),
        SizedBox(
          height: 12,
        ),
      ],
    );
  }
}

class _BottomCard extends StatelessWidget {
  final Iterable<String> options;
  final Iterable<Map<String, dynamic>> information;

  const _BottomCard({
    super.key,
    required this.options,
    required this.information,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      padding: EdgeInsets.all(16),
      child: Wrap(
        runSpacing: 16,
        children: [
          Container(
            width: double.infinity,
            child: Text(
              "Об отеле",
              style: MyTextStyles.textStyle5.copyWith(
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          OptionsWrapper(options: options),
          Text(
            "Отель VIP-класса с собственными гольф полями. Высокий уровнь сервиса. Рекомендуем для респектабельного отдыха. Отель принимает гостей от 18 лет!",
            style: MyTextStyles.textStyle2.copyWith(
              fontWeight: FontWeight.w400,
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: MyColors.color6,
              borderRadius: BorderRadius.circular(15),
            ),
            padding: EdgeInsets.all(15),
            child: ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  final listTile = information.elementAt(index);
                  return Row(
                    children: [
                      Image.asset(
                        listTile["icon"]!,
                        width: 24,
                        height: 24,
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              listTile["title"]!,
                              style: MyTextStyles.textStyle2.copyWith(
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            Text(
                              listTile["subtitle"]!,
                              style: MyTextStyles.textStyle1.copyWith(
                                fontWeight: FontWeight.w500,
                                color: MyColors.color4,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 24,
                        height: 24,
                        padding: EdgeInsets.symmetric(vertical: 6)
                            .copyWith(left: 10, right: 8),
                        child: Image.asset(
                          "assets/icon_arrow_forward_black.png",
                          height: 12,
                          width: 6,
                        ),
                      )
                    ],
                  );
                },
                separatorBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 24 + 14,
                        ),
                        Expanded(
                          child: Divider(
                            height: 0,
                            thickness: 1,
                            color: MyColors.color9.withAlpha(15),
                          ),
                        ),
                      ],
                    ),
                  );
                },
                itemCount: information.length),
          )
        ],
      ),
    );
  }
}

class _TopCard extends StatelessWidget {
  final String name;
  final Iterable<String> imageUrlList;
  final Iterable<String> tags;
  final num rate;
  final num price;

  const _TopCard({
    super.key,
    required this.name,
    required this.imageUrlList,
    required this.tags,
    required this.rate,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    final imageList = imageUrlList
        .map((e) => Image.asset(
              e,
              fit: BoxFit.cover,
            ))
        .toList();

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(12),
          bottomRight: Radius.circular(12),
        ),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ImagePageView(imageList: imageList),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RateField(
                  value: rate,
                ),
                SizedBox(
                  height: 8,
                ),
                Text(name,
                    style: MyTextStyles.textStyle5.copyWith(
                      fontWeight: FontWeight.w500,
                    )),
                SizedBox(
                  height: 8,
                ),
                TagsField(
                  tags: tags,
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "от ",
                      style: MyTextStyles.textStyle6.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Expanded(
                      child: PriceField(
                        value: price,
                        description: "за тур с перелётом",
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
