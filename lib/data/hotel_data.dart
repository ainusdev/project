class HotelData {
  final String name = "Steigenberger Makadi";
  final double rate = 5.0;
  final Set<String> tags = {
    "Madinat Makadi",
    "Safaga Road",
    "Makadi Bay",
    "Египет",
  };

  double price = 134673;

  final Set<String> options = {
    "3-я линия",
    "Платный Wi-Fi в фойе",
    "30 км до аэропорта",
    "1 км до пляжа",
  };

  final Set<Map<String, dynamic>> information = {
    {
      "icon": "assets/icon_happy.png",
      "title": "Удобства",
      "subtitle": "Самое необходимое",
    },
    {
      "icon": "assets/icon_tick.png",
      "title": "Что включено",
      "subtitle": "Самое необходимое",
    },
    {
      "icon": "assets/icon_close.png",
      "title": "Что не включено",
      "subtitle": "Самое необходимое",
    },
  };

  final List<RoomData> roomList = List.generate(10, (index) => RoomData());

  final List<String> imageUrlList = [
    "assets/img1.png",
    "assets/img1.png",
    "assets/img1.png",
    "assets/img1.png",
    "assets/img1.png",
  ];
}

class RoomData {
  final String name = "Стандартный с видом на бассейн или сад";

  final List<String> imageUrlList = [
    "assets/img2.png",
    "assets/img2.png",
    "assets/img2.png",
    "assets/img2.png",
    "assets/img2.png",
  ];

  final Set<String> options = {
    "Все включено",
    "Кондиционер",
  };

  final double price = 186600;
}
