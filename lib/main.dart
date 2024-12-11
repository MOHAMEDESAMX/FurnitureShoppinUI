import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:furniture_shoppin_ui/core/funcations/register_services.dart';
import 'package:furniture_shoppin_ui/core/funcations/setup_firebase.dart';
import 'package:furniture_shoppin_ui/features/boarding/presentation/view/boarding_view.dart';
import 'package:furniture_shoppin_ui/features/home/presentation/view/main_screen_view.dart';
import 'package:google_fonts/google_fonts.dart';

void main() async {
  await setups();
  runApp(const MainApp());
}

Future<void> setups() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupFirebase();
  await registerServices();
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (_, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              textTheme: GoogleFonts.nunitoSansTextTheme(),
            ),
            home: (FirebaseAuth.instance.currentUser != null &&
                    FirebaseAuth.instance.currentUser!.emailVerified)
                ? const MainScreen()
                : const BoardingView(),
          );
        });
  }
}
