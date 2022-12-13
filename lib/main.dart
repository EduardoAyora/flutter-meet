import 'package:flutter/material.dart';
import 'package:flutter_meet2go/widgets/home/appbar.dart';
import 'package:flutter_meet2go/widgets/home/card.dart';
import 'package:flutter_meet2go/widgets/home/carousel.dart';
import 'package:flutter_meet2go/widgets/home/searchbar.dart';
import 'package:flutter_meet2go/widgets/home/selectable_buttons_group.dart';

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const MyAppBar(),
      ),
      body: Container(
        color: Theme.of(context).colorScheme.primary,
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              const SearchBar(),
              Carousel(
                height: 400,
                pathImages: const [
                  'https://www.meet2go.com/_nuxt/img/dd357eb.png',
                  'https://www.meet2go.com/_nuxt/img/dd357eb.png'
                ],
              ),
              const SelectableButtonsGroup(),
              GridView.count(
                childAspectRatio: 0.65,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                crossAxisCount: 2,
                mainAxisSpacing: 0,
                crossAxisSpacing: 3,
                children: List.generate(20, (index) {
                  return MyCard();
                }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
