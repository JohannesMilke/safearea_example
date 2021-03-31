import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:safearea_example/page/appbar_page.dart';
import 'package:safearea_example/page/safearea_page.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  static final String title = 'Safe Area VS AppBar';

  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: title,
        theme: ThemeData(primarySwatch: Colors.pink),
        home: MainPage(),
      );
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int index = 0;

  @override
  Widget build(BuildContext context) => Scaffold(
        body: buildPages(),
        bottomNavigationBar: buildBottomBar(),
      );

  Widget buildBottomBar() => BottomNavigationBar(
      backgroundColor: Theme.of(context).primaryColor,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.white70,
      currentIndex: index,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.health_and_safety),
          label: 'Safe Area',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.label),
          label: 'App Bar',
        ),
      ],
      onTap: (index) => setState(() => this.index = index),
    );

  Widget buildPages() {
    switch (index) {
      case 0:
        return SafeAreaPage();
      case 1:
      default:
        return AppBarPage();
    }
  }
}
