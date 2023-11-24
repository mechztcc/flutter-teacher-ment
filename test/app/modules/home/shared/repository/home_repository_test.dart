import 'package:flutter_test/flutter_test.dart';
import 'package:peter_space/app/modules/home/shared/repository/home_repository.dart';
 
void main() {
  late HomeRepository repository;

  setUpAll(() {
    repository = HomeRepository();
  });
}