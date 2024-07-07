import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:lilian_soft_task/presentation/pages/cart/controller/cart_controller.dart';
import 'package:lilian_soft_task/presentation/resources/routes_manger.dart';
import 'package:lilian_soft_task/presentation/resources/theme_manger.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    Get.put(CartController(), permanent: true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Lilian Soft Task",
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      useInheritedMediaQuery: true,
      getPages: AppRoutes.pages,
      initialRoute: AppRoutes.homeRoute,
      theme: getApplicationTheme,
      debugShowCheckedModeBanner: false,
    );
  }
}
