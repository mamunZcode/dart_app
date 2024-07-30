import 'package:dart_app/screen/devloper.dart';
import 'package:dart_app/screen/home_screen.dart';
import 'package:dart_app/screen/setting-screen.dart';
import 'package:dart_app/state/all_problems.dart';
import 'package:dart_app/state/cart_model.dart';
import 'package:dart_app/state/firestore_item_list.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'firebase_options.dart';



void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => CartModel()),
        ChangeNotifierProvider(create: (context) => AllProblems()),
        ChangeNotifierProvider(create: (context) => MyItemList()),
            ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'C-Learner App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'comic',
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.red[900]!),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
      // initialRoute: LoginScreen.id,
      routes: {
        HomeScreen.id: (context) => HomeScreen(),
        SettingScreen.id: (context) => SettingScreen(),
        Devloper.id:(context) => Devloper(),
      },
    );
  }
}


