import 'package:burger_home/screens/ad-details/provider.dart';
import 'package:burger_home/screens/add-item/provider.dart';
import 'package:burger_home/screens/store-home/burger-home.dart';
import 'package:burger_home/screens/store-home/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'my-material-app.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => BurgerHomeProvider()),
        ChangeNotifierProvider(create: (_) => AdDetailsProvider()),
        ChangeNotifierProvider(create: (_) => AddItemProvider()),
      ],

      child: MyMaterialApp(),
    ),
  );
}
