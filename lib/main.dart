import 'package:flutter/material.dart';
import 'package:myapp/form.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: '3.2 Flutter Push Pop',
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      home: MyForm(),
    );
  }
}
