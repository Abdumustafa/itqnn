import 'package:flutter/material.dart';
import 'package:itqan/core/services/services.dart';
import 'package:itqan/itqan_app.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  runApp(ItqanApp());
}


