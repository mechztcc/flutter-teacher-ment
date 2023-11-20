import 'package:flutter_test/flutter_test.dart';
import 'package:peter_space/app/shared/services/local_storage_service.dart';
 
void main() {
  late LocalStorageService service;

  setUpAll(() {
    service = LocalStorageService();
  });
}