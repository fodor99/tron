import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

import 'app.dart';

void main() {

  WidgetsFlutterBinding.ensureInitialized();
  if (Platform.isWindows || Platform.isLinux || Platform.isMacOS) {
    //DESKTOP
  }else if(kIsWeb){
    //WEB
  }else{
    //MOBILE
    if(Platform.isAndroid){

    }
    if(Platform.isIOS){

    }
    if(Platform.isFuchsia){
      // NEW OS running on anything :))))

    }
  }

  runApp(const App());
}

