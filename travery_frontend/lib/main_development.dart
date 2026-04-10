import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:logging/logging.dart';

import 'package:travery_frontend/config/dependencies.dart';
import 'main.dart';

void main() {
  Logger.root.level = Level.ALL;
  runApp(MultiProvider(providers: providers, child: const MyApp()));
}
