import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:to_do/biding/binding.dart';
import 'package:to_do/page/get_all_task/get_all_task_binding.dart';
import 'package:to_do/page/get_all_task/get_all_task_view.dart';
import 'package:to_do/page/new_task/new_task_binding.dart';
import 'package:to_do/page/new_task/new_task_view.dart';
import 'package:to_do/page/profil/profil_binding.dart';
import 'package:to_do/page/profil/profil_view.dart';
import 'package:to_do/page/register/register_binding.dart';
import 'package:to_do/page/register/register_view.dart';




void main() async{
  await Hive.initFlutter();
  await Hive.openBox('token');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: RegisterPage.route,
      initialBinding: InitialBinding(),
      getPages: [
        GetPage(
            name: RegisterPage.route,
            page: ()=>RegisterPage(),
        binding: RegisterBinding()
        ),

        GetPage(
            name: New_taskPage.route,
            page: ()=>New_taskPage(),
            binding: New_taskBinding()
        ),
        GetPage(
            name: Get_all_taskPage.route,
            page: ()=>Get_all_taskPage(),
            binding: Get_all_taskBinding()
        ),
        GetPage(
            name: ProfilPage.route,
            page: ()=>ProfilPage(),
            binding: ProfilBinding()
        )
      ],

    );
  }
}


