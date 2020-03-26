import 'package:appcovid19/page/form_page.dart';
import 'package:appcovid19/page/home_page.dart';
import 'package:appcovid19/page/init_page.dart';
import 'package:appcovid19/page/login_page.dart';
import 'package:appcovid19/page/news_page.dart';
import 'package:appcovid19/page/report_page.dart';
import 'package:appcovid19/page/test_page.dart';
import 'package:appcovid19/store/config_store.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ConfigStore>(
      create: (context) => ConfigStore(),
      child: MaterialApp(
        initialRoute: '/login_page',
        routes: {
          '/init_page': (context) => InitPage(),
          '/home_page': (context) => HomePage(),
          '/news_page': (context) => NewsPage(),
          '/report_page': (context) => ReportPage(),
          '/test_page': (context) => TestPage(),
          '/login_page': (context) => LoginPage(),
          '/form_login_page': (context) => LoginFormPage(),
        },
      ),
    );
  }
}
