import 'package:walmart_app/Provider/add_to_cart_provider.dart';
import 'package:walmart_app/Provider/favorite_provider.dart';
import 'package:flutter/material.dart';
import 'screens/nav_bar_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MultiProvider(
    providers: [
      // for add to cart
      ChangeNotifierProvider(create: (_)=>CartProvider()),
      // for favorite
      ChangeNotifierProvider(create: (_)=>FavoriteProvider()),
    ],
    child: const MaterialApp(
      debugShowCheckedModeBanner: false,

      home:  BottomNavBar(),
    ),
  );
}