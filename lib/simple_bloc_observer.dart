import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimpleBlocObserver implements BlocObserver {
  @override
  void onChange(BlocBase<dynamic> bloc, Change<dynamic> change) {
    debugPrint("change = $change");
  }

  @override
  void onClose(BlocBase<dynamic> bloc) {
    onClose(bloc);
    debugPrint('🗑️ تم إغلاق الـ Bloc: ${bloc.runtimeType}');
  }

  @override
  void onCreate(BlocBase<dynamic> bloc) {
    onCreate(bloc);
    debugPrint('✅ تم إنشاء Bloc جديد: ${bloc.runtimeType}');
  }

  @override
  void onDone(Bloc<dynamic, dynamic> bloc, Object? event, [Object? error, StackTrace? stackTrace]) {
    // TODO: implement onDone
  }

  @override
  void onError(BlocBase<dynamic> bloc, Object error, StackTrace stackTrace) {
    // TODO: implement onError
  }

  @override
  void onEvent(Bloc<dynamic, dynamic> bloc, Object? event) {
    // TODO: implement onEvent
  }

  @override
  void onTransition(Bloc<dynamic, dynamic> bloc, Transition<dynamic, dynamic> transition) {
    // TODO: implement onTransition
  }
} 