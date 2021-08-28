// @dart=2.9
import 'package:flutter/material.dart';

//Importanciones propias
import 'package:flutter_band_app/pages/home.dart';
import 'package:flutter_band_app/pages/status.dart';
import 'package:flutter_band_app/services/socket_service.dart';

import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => SocketService())],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        initialRoute: 'home',
        routes: {'home': (_) => HomePage(), 'status': (_) => StatusPage()},
      ),
    );
  }
}
