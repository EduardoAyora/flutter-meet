import 'package:flutter/material.dart';
import 'package:flutter_meet2go/widgets/appbar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Poppins',
        colorScheme: const ColorScheme(
          primary: Color(0xff000000),
          secondary: Color(0xffF3CE00),
          tertiary: Color(0xff272D33),
          surface: Color(0xffF3CE00),
          background: Color(0xff000000),
          onPrimary: Colors.white,
          onSecondary: Colors.white,
          onSurface: Color(0xff000000),
          onBackground: Color(0xff000000),
          onTertiary: Color(0xff8E9BA5),
          error: Colors.redAccent,
          onError: Colors.redAccent,
          brightness: Brightness.light,
        ),
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const MyAppBar(),
      ),
      body: Container(
        color: Theme.of(context).colorScheme.primary,
        child: Column(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.fromLTRB(16, 8, 16, 12),
              child: TextField(
                readOnly: true,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.fromLTRB(15, 10, 20, 10),
                  hintText: 'Buscar artista o ciudad',
                  filled: true,
                  hintStyle: TextStyle(
                    color: Theme.of(context).colorScheme.onTertiary,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold,
                  ),
                  fillColor: Theme.of(context).colorScheme.tertiary,
                  suffixIcon: Icon(
                    Icons.search,
                    color: Theme.of(context).colorScheme.onTertiary,
                    size: 24,
                  ),
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Color(0x00000000),
                      width: 0,
                    ),
                    borderRadius: BorderRadius.circular(40),
                  ),
                ),
              ),
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
    );
  }
}
