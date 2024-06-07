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
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
              ResponsiveFonts(text: "Hello Worldsdjgskdghsj kdsgjdsgdhsd ghsjkdhksdh sjdskjdhsk dhdhjsdhsdhsjd", size: 20, textalignment: TextAlign.center, overflow: TextOverflow.ellipsis),
              ResponsiveFonts(text: "Hello World", size: 25, color: Colors.red),
              ResponsiveFonts(text: "Hello World", size: 30, decoration: TextDecoration.underline, color: Colors.blue),
              ResponsiveFonts(text: "Hello ", size: 35, color: Colors.blue, fontWeight: FontWeight.bold),
            ],
          ),
        ),
      ),
    );
  }
}
