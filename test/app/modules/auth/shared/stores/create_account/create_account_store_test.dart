import 'package:flutter_test/flutter_test.dart';
import 'package:peter_space/app/modules/auth/shared/stores/create_account/create_account_store.dart';
 
void main() {
  late CreateAccountStore store;

  setUpAll(() {
    store = CreateAccountStore();
  });

  test('increment count', () async {
    expect(store.value, equals(0));
    store.increment();
    expect(store.value, equals(1));
  });
}