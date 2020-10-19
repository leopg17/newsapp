import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:newsapp/src/pages/tabs_page.dart';
import 'package:newsapp/src/services/news_service.dart';
import 'package:newsapp/src/theme/tema.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => new NewsService()),
        /*
        Si ocuparamos mas de una provider debemos de agregar una linea por cada uno:
        ChangeNotifierProvider(create: (_)=>NewsService()),
        ChangeNotifierProvider(create: (_)=>NewsService()),
        */
      ],
      child: MaterialApp(
        title: 'Material App',
        theme: miTema,
        debugShowCheckedModeBanner: false,
        home: TabsPage(),
      ),
    );
  }
}
