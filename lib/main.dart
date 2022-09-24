import 'dart:io';

//import 'package:desktop_window/desktop_window.dart';
import 'package:flame/flame.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

import 'app.dart';

void main() async{

  WidgetsFlutterBinding.ensureInitialized();
  if (Platform.isWindows || Platform.isLinux || Platform.isMacOS) {
    //DESKTOP
    //await DesktopWindow.toggleFullScreen();
  }else if(kIsWeb){
    //WEB
  }else{
    //MOBILE
    if(Platform.isAndroid){
      await Flame.device.fullScreen();
      //await Flame.device.setLandscape();
    }
    if(Platform.isIOS){
      await Flame.device.fullScreen();
      //await Flame.device.setLandscape();
    }
    if(Platform.isFuchsia){
      // NEW OS running on anything :))))
    }
  }


  runApp(const App());
}

