import 'dart:io';

import 'package:desktop_window/desktop_window.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

import 'app.dart';

void main() async{

  WidgetsFlutterBinding.ensureInitialized();
  if (Platform.isWindows || Platform.isLinux || Platform.isMacOS) {
    //DESKTOP
    await DesktopWindow.toggleFullScreen();
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

