import 'package:flutter/material.dart';
import 'package:whatsapp_clone/ui/login_page/login_page_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: LoginPageView(),
      ),
    );
  }
}
