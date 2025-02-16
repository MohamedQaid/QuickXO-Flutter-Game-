import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quick_xo_flutter_game/providers/provider_check.dart';
import 'package:quick_xo_flutter_game/providers/provider_play_on_border.dart';
import 'package:quick_xo_flutter_game/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => ProviderCheck()),
        ChangeNotifierProvider(create: (context) => ProviderPlayOnBorder()),
      ],
      child: MaterialApp(
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const HomeScreen(),
      ),
    );
  }
}
