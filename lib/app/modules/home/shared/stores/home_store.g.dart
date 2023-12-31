// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HomeStore on HomeStoreBase, Store {
  late final _$lessonsAtom =
      Atom(name: 'HomeStoreBase.lessons', context: context);

  @override
  List<Lessons>? get lessons {
    _$lessonsAtom.reportRead();
    return super.lessons;
  }

  @override
  set lessons(List<Lessons>? value) {
    _$lessonsAtom.reportWrite(value, super.lessons, () {
      super.lessons = value;
    });
  }

  late final _$nameAtom = Atom(name: 'HomeStoreBase.name', context: context);

  @override
  String? get name {
    _$nameAtom.reportRead();
    return super.name;
  }

  @override
  set name(String? value) {
    _$nameAtom.reportWrite(value, super.name, () {
      super.name = value;
    });
  }

  late final _$listLessonsAsyncAction =
      AsyncAction('HomeStoreBase.listLessons', context: context);

  @override
  Future<void> listLessons() {
    return _$listLessonsAsyncAction.run(() => super.listLessons());
  }

  late final _$HomeStoreBaseActionController =
      ActionController(name: 'HomeStoreBase', context: context);

  @override
  dynamic initStore() {
    final _$actionInfo = _$HomeStoreBaseActionController.startAction(
        name: 'HomeStoreBase.initStore');
    try {
      return super.initStore();
    } finally {
      _$HomeStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
lessons: ${lessons},
name: ${name}
    ''';
  }
}
