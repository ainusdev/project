import 'package:flutter/material.dart';
import 'package:project/presentation/screens/index.dart';
import 'package:project/presentation/styles.dart';
import 'package:project/presentation/widgets/index.dart';

class CheckinScreen extends StatefulWidget {
  const CheckinScreen({super.key});

  @override
  State<CheckinScreen> createState() => _CheckinScreenState();
}

class _CheckinScreenState extends State<CheckinScreen> {
  final isOpenedList = [
    true,
    false,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Бронирование"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Wrap(
          runSpacing: 8,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              padding: const EdgeInsets.all(16),
              child: const ListBody(
                children: [
                  RateField(value: 5.0),
                  SizedBox(
                    height: 8,
                  ),
                  TitleField(
                    value: "Steigenberger Makadi",
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  TagsField(
                    tags: [
                      "Madinat Makadi",
                      "Safaga Road",
                      "Makadi Bay",
                      "Египет"
                    ],
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              padding: const EdgeInsets.all(16),
              child: Builder(builder: (context) {
                const data = [
                  {
                    "title": "Вылет из",
                    "contents": "Санкт-Петербург",
                  },
                  {
                    "title": "Страна, город",
                    "contents": "Египет, Хургада",
                  },
                  {
                    "title": "Даты",
                    "contents": "19.09.2023 – 27.09.2023",
                  },
                  {
                    "title": "Кол-во ночей",
                    "contents": "7 ночей",
                  },
                  {
                    "title": "Отель",
                    "contents": "Steigenberger Makadi",
                  },
                  {
                    "title": "Номер",
                    "contents": "Стандартный с видом на бассейн или сад",
                  },
                  {
                    "title": "Питание",
                    "contents": "Все включено",
                  },
                ];

                return Wrap(
                  runSpacing: 16,
                  children: data.map((e) {
                    return Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                            width: 140,
                            child: Text(
                              "${e["title"]}",
                              style: MyTextStyles.textStyle2.copyWith(
                                fontWeight: FontWeight.w400,
                                color: MyColors.color4,
                              ),
                            )),
                        Expanded(
                            child: Text(
                          "${e["contents"]}",
                          style: MyTextStyles.textStyle2.copyWith(
                            fontWeight: FontWeight.w400,
                            color: Colors.black,
                          ),
                        )),
                      ],
                    );
                  }).toList(),
                );
              }),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              padding: const EdgeInsets.all(16),
              child: ListBody(
                children: [
                  const TitleField(value: "Информация о покупателе"),
                  const SizedBox(
                    height: 20,
                  ),
                  Builder(builder: (context) {
                    const data = [
                      {
                        "label": "Номер телефона",
                        "default": "+7 (951) 555-99-00",
                      },
                      {
                        "label": "Почта",
                        "default": "examplemail.000@mail.ru",
                      },
                    ];

                    return const InputListField(data: data);
                  }),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    "Эти данные никому не передаются. После оплаты мы вышли чек на указанный вами номер и почту",
                    style: MyTextStyles.textStyle1.copyWith(
                      fontWeight: FontWeight.w400,
                      color: MyColors.color4,
                    ),
                  )
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: ListBody(
                children: [
                  Builder(builder: (context) {
                    final isOpened = isOpenedList[0];
                    return ExpansionTile(
                      initiallyExpanded: isOpened,
                      onExpansionChanged: (value) {
                        setState(() => isOpenedList[1] = value);
                      },
                      title: const TitleField(value: "Первый туриста"),
                      trailing: AnimatedContainer(
                          width: 32,
                          height: 32,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              color: MyColors.color1.withOpacity(0.1)),
                          duration: const Duration(milliseconds: 200),
                          child: Transform.flip(
                              flipY: isOpened,
                              child:
                                  Image.asset("assets/icon_arrow_down.png"))),
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16.0).copyWith(top: 0),
                          child: Builder(builder: (context) {
                            const data = [
                              {
                                "label": "Имя",
                              },
                              {
                                "label": "Фамилия",
                              },
                              {
                                "label": "Дата рождения",
                              },
                              {
                                "label": "Гражданство",
                              },
                              {
                                "label": "Номер загранпаспорта",
                              },
                              {
                                "label": "Срок действия загранпаспорта",
                              },
                            ];
                            return const InputListField(data: data);
                          }),
                        )
                      ],
                    );
                  }),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: ListBody(
                children: [
                  Builder(builder: (context) {
                    final isOpened = isOpenedList[1];
                    return ExpansionTile(
                      initiallyExpanded: isOpened,
                      onExpansionChanged: (value) {
                        setState(() => isOpenedList[1] = value);
                      },
                      title: const TitleField(value: "Второй туриста"),
                      trailing: AnimatedContainer(
                          width: 32,
                          height: 32,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              color: MyColors.color1.withOpacity(0.1)),
                          duration: const Duration(milliseconds: 200),
                          child: Transform.flip(
                              flipY: isOpened,
                              child:
                                  Image.asset("assets/icon_arrow_down.png"))),
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16.0).copyWith(top: 0),
                          child: Builder(builder: (context) {
                            const data = [
                              {
                                "label": "Имя",
                              },
                              {
                                "label": "Фамилия",
                              },
                              {
                                "label": "Дата рождения",
                              },
                              {
                                "label": "Гражданство",
                              },
                              {
                                "label": "Номер загранпаспорта",
                              },
                              {
                                "label": "Срок действия загранпаспорта",
                              },
                            ];
                            return const InputListField(data: data);
                          }),
                        )
                      ],
                    );
                  }),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: ListBody(
                children: [
                  Builder(builder: (context) {
                    return ExpansionTile(
                      onExpansionChanged: (value) {},
                      title: const TitleField(value: "Добавить туриста"),
                      trailing: AnimatedContainer(
                          width: 32,
                          height: 32,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(6),
                              color: MyColors.color1),
                          duration: const Duration(milliseconds: 200),
                          child: Image.asset("assets/icon_add.png")),
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16.0).copyWith(top: 0),
                          child: Builder(builder: (context) {
                            const data = [
                              {
                                "label": "Имя",
                              },
                              {
                                "label": "Фамилия",
                              },
                              {
                                "label": "Дата рождения",
                              },
                              {
                                "label": "Гражданство",
                              },
                              {
                                "label": "Номер загранпаспорта",
                              },
                              {
                                "label": "Срок действия загранпаспорта",
                              },
                            ];
                            return const InputListField(data: data);
                          }),
                        )
                      ],
                    );
                  }),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              padding: const EdgeInsets.all(16),
              child: Builder(builder: (context) {
                const data = [
                  {
                    "title": "Тур",
                    "contents": "186 600 ₽",
                  },
                  {
                    "title": "Топливный сбор",
                    "contents": "9 300 ₽",
                  },
                  {
                    "title": "Сервисный сбор",
                    "contents": "2 136 ₽",
                  },
                  {
                    "title": "К оплате",
                    "contents": "198 036 ₽",
                  },
                ];

                return Wrap(
                  runSpacing: 16,
                  children: data.map((e) {
                    return Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                            width: 140,
                            child: Text(
                              "${e["title"]}",
                              style: MyTextStyles.textStyle2.copyWith(
                                fontWeight: FontWeight.w400,
                                color: MyColors.color4,
                              ),
                            )),
                        const Spacer(),
                        Builder(builder: (context) {
                          if (e["title"] == "К оплате") {
                            return Text(
                              "${e["contents"]}",
                              style: MyTextStyles.textStyle2.copyWith(
                                fontWeight: FontWeight.w600,
                                color: MyColors.color1,
                              ),
                            );
                          }

                          return Text(
                            "${e["contents"]}",
                            style: MyTextStyles.textStyle2.copyWith(
                              fontWeight: FontWeight.w400,
                              color: Colors.black,
                            ),
                          );
                        }),
                      ],
                    );
                  }).toList(),
                );
              }),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomButton(
        title: "Оплатить 198 036 ₽",
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => const PaymentSuccessScreen()));
        },
      ),
    );
  }
}

class InputListField extends StatelessWidget {
  const InputListField({
    super.key,
    required this.data,
  });

  final List<Map<String, String>> data;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      runSpacing: 8,
      children: data.map((e) {
        return Container(
          padding: const EdgeInsets.symmetric(
            vertical: 8,
            horizontal: 16,
          ),
          decoration: BoxDecoration(
            color: MyColors.color2,
            borderRadius: BorderRadius.circular(10),
          ),
          child: TextFormField(
            initialValue: e["default"],
            style: MyTextStyles.textStyle2.copyWith(
              letterSpacing: 0.75,
              fontWeight: FontWeight.w400,
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.zero,
              // isCollapsed: true,
              isDense: true,
              labelText: e["label"],
              labelStyle: MyTextStyles.textStyle3.copyWith(
                letterSpacing: 0.01,
                color: MyColors.color5,
              ),
              hintText: e["hint"],
              hintStyle: MyTextStyles.textStyle3.copyWith(
                letterSpacing: 17 * 0.01,
                color: MyColors.color5,
              ),
            ),
          ),
        );
      }).toList(),
    );
  }
}
