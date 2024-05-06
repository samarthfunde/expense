import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ui/data/repository/local/local_database.dart';
import 'package:ui/presentation/screen/home/bloc_for_cat/bloc_database.dart';
import 'package:ui/presentation/screen/home/cat_page.dart';
import 'package:ui/presentation/screen/home/expensepage1.dart';
import 'package:ui/presentation/screen/splash_screen/intro_page.dart';
void main() {
  runApp(BlocProvider(create: (context) => CatBloc(db: MyDataHelper.db),
  child: const MyApp(),));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: IntroPage(),
    );
  }
}


