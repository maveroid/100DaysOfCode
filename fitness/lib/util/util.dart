import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

goFullscreen() => SystemChrome.setEnabledSystemUIOverlays([]);

exitFullscreen() => SystemChrome.setEnabledSystemUIOverlays([
      SystemUiOverlay.top,
      SystemUiOverlay.bottom,
    ]);

customizeOverlay() => SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.blueGrey,
      statusBarIconBrightness: Brightness.light,
      systemNavigationBarColor: Colors.blueGrey,
      systemNavigationBarIconBrightness: Brightness.light,
    ));
