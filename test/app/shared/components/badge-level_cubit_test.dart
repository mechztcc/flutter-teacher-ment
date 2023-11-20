import 'package:flutter_test/flutter_test.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:peter_space/app/shared/components/badge-level_cubit.dart';
 
void main() {

  blocTest<BadgeLevelCubit, int>('emits [1] when increment is added',
    build: () => BadgeLevelCubit(),
    act: (cubit) => cubit.increment(),
    expect: () => [1],
  );
}