import 'package:flutter_test/flutter_test.dart';
import 'package:peter_space/app/modules/home/shared/services/home_service.dart';
 
void main() {
  late HomeService service;

  setUpAll(() {
    service = HomeService();
  });
}