import 'package:flutter/material.dart';
import 'package:flutter_exercise/common/loader.dart';
import 'package:flutter_exercise/common/snackbar.dart';
import 'package:flutter_exercise/features/dashboard/pages/main_page.dart';
import 'package:flutter_exercise/features/download/model/exercise_db/exercise_db.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart' as path_provider;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final appDocumentDirectory =
      await path_provider.getApplicationDocumentsDirectory();
  Hive.init(appDocumentDirectory.path);
  Hive.registerAdapter(ExerciseDBAdapter());
  runApp(const ProviderScope(child: MyApp()));

  // final exerciseBox = await Hive.openBox('exercise_box');
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
      ),
      home: FutureBuilder(
          future: Hive.openBox('exercise_box'),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              if (snapshot.hasError) {
                showSnackBar(context, snapshot.error.toString());
              } else {
                return const MainPage();
              }
            } else
              return const Loader();
            return const Loader();
          }),
    );
  }

  @override
  void dispose() {
    Hive.close();
    super.dispose();
  }
}
