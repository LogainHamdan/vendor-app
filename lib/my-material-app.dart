import 'package:burger_home/screens/ad-details/ad-details.dart';
import 'package:burger_home/screens/store-home/burger-home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class MyMaterialApp extends StatelessWidget {
  const MyMaterialApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MaterialApp(
          navigatorKey: GlobalKey<NavigatorState>(),
          debugShowCheckedModeBanner: false,
          title: 'Wefeh',
          theme: ThemeData(
            textTheme: TextTheme(
              bodySmall: GoogleFonts.poppins(
                fontSize: 16.sp,
                color: Colors.black,
              ),
              bodyMedium: GoogleFonts.poppins(
                fontWeight: FontWeight.bold,
                fontSize: 16.sp,
                color: Colors.black,
              ),
              bodyLarge: GoogleFonts.poppins(
                fontWeight: FontWeight.bold,
                fontSize: 20.sp,
                color: Colors.black,
              ),
            ),
          ),
          initialRoute: AdDetailsScreen.id,
          routes: {
            AdDetailsScreen.id: (context) => AdDetailsScreen(),
            StoreHomePage.id: (context) => StoreHomePage(),
          },
        );
      },
    );
  }
}
