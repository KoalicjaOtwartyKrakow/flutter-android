import 'package:fimber/fimber.dart';
import 'package:flutter/material.dart';
import 'package:flutter_android/injection.dart';
import 'package:flutter_android/presentation/core/app_widget.dart';
import 'package:injectable/injectable.dart';
import 'package:intl/intl_standalone.dart';

Future<void> main() async {
  Fimber.plantTree(DebugTree());
  WidgetsFlutterBinding.ensureInitialized();
  configureInjection(Environment.prod);
  await findSystemLocale();
  runApp(KokApp());
}
