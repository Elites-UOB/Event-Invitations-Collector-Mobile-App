import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'app/modules/home/binding.dart';
import 'app/modules/home/page.dart';
import 'routes/pages.dart';
import 'routes/routes.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(
    url: 'test',
    anonKey: 'test',
  );
  runApp(GetMaterialApp(
    getPages: AppPages.pages,
    home: HomePage(),
    theme: ThemeData(
      fontFamily: "Tajawal",
      //     colorScheme: ColorScheme.fromSwatch().copyWith(
      //       primary: Palette.primaryColor,
      //       secondary: Palette.secondaryColor,
    ),
    initialBinding: HomeBinding(),
    initialRoute: Routes.HOME,
    debugShowCheckedModeBanner: false,
  ));
}
