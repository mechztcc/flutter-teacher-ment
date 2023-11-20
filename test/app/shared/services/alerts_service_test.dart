import 'package:flutter_test/flutter_test.dart';
import 'package:peter_space/app/shared/services/alerts_service.dart';
 
void main() {
  late AlertsService service;

  setUpAll(() {
    service = AlertsService();
  });
}