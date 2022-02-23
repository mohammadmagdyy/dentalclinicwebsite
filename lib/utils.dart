import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/cupertino.dart';
import 'dart:async';
import 'package:flutter/foundation.dart';

_Dispatcher logHistory = _Dispatcher("");

void log(String value){
  String v = value??"";
  logHistory.value= v+"\n";
  logHistory.value;
  if(kReleaseMode==false){
    print(v);
  }

}
void logError(String value)=>log(
  "[ERROR]" +(value??"")
);
void initLogger(VoidCallback runApp){
  runZonedGuarded(()async{
    WidgetsFlutterBinding.ensureInitialized();
    FlutterError.onError=(FlutterErrorDetails details){
      FlutterError.dumpErrorToConsole(details);
      logError(details.stack.toString());
    };
    runApp.call();
  },(Object error,StackTrace trace){
    logError(trace.toString());
  });
}
class _Dispatcher extends ValueNotifier<String>{
  _Dispatcher(String value) : super(value);

}