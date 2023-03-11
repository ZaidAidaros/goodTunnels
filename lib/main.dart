import 'package:flutter/material.dart';
import 'Core/Services/settingservices.dart';
import 'Views/myapp.dart';
void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await initServices();
  await Future.delayed(const Duration(seconds: 1));
  runApp(const MyApp());
}

