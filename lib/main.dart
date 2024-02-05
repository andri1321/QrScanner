// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qr_reader/providers/ui_provider.dart';
import 'package:qr_reader/router/router.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: ( _ ) => new UiProvider())
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: 'QR Reader',
        routerConfig: route,
        theme: ThemeData(
          primaryColor: Colors.purple,
          floatingActionButtonTheme: const FloatingActionButtonThemeData(
            backgroundColor: Colors.purple
          )
      
        ),
      ),
    );
  }
}
