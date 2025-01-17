import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jobmoim/assets/style/colors.dart';
import 'package:jobmoim/screens/happy/happy_page.dart';
import 'package:jobmoim/screens/main/main_page.dart';
import 'package:jobmoim/screens/signup/signup_page.dart';
import 'package:jobmoim/screens/splash/splash_page.dart';

void main() {
  // WidgetsFlutterBinding.ensureInitialized();
  // try {
  //   await Firebase.initializeApp(
  //     options: DefaultFirebaseOptions.currentPlatform,
  //   );
  // } catch (e) {
  //   print('Firebase initialization error: $e');
  // }
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Jobmoim',
      theme: ThemeData(
        fontFamily: 'JGaegujaengyi',
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: CustomColors.background,
        ),
      ),
      home: const SplashPage(nextPage: SignupPage()),
      routes: {
        '/main': (context) => const MainPage(),
        '/happy': (context) => const HappyPage(),
      },
    );
  }
}
