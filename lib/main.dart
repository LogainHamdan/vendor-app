import 'package:burger_home/screens/store-home/burger-home.dart';
import 'package:burger_home/screens/store-home/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => BurgerTabProvider())],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: StoreHomePage(),
      ),
    ),
  );
}
