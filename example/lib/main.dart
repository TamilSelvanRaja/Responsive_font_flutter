import 'package:flutter/material.dart';
import 'package:responsive_fonts/responsive_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Responsive Font',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(text: 'Responsive Font Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.text});
  final String text;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.text),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ResponsiveFonts(text: "Hello World", size: 20),
            ResponsiveFonts(text: "Hello World", size: 25, color: Colors.red),
            ResponsiveFonts(text: "Hello World", size: 30, decoration: TextDecoration.underline, color: Colors.blue),
            ResponsiveFonts(text: "Hello World", size: 35, color: Colors.blue, fontWeight: FontWeight.bold),
          ],
        ),
      ),
    );
  }
}
