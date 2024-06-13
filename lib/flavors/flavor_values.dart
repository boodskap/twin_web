import 'dart:convert';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:twin_web/foundation/extensions/dotenv_ext.dart';

class FlavorValues {
  final String baseUrl;
  final bool showLogs;

  const FlavorValues({required this.baseUrl, required this.showLogs});

  static FlavorValues fromEnvironment() {
    return FlavorValues(
      baseUrl: dotenv.get("BASE_URL"),
      showLogs: dotenv.getBoolOrDefault("SHOW_LOGS", fallback: false),
    );
  }
}
