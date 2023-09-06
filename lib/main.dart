import 'package:flutter/material.dart';
import 'package:project/data/hotel_data.dart';
import 'package:project/presentation/app.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    Provider(create: (_) => HotelData()),
  ], child: const App()));
}
