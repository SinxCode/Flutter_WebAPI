package br.com.alura.flutter_webapi_first_course

import io.flutter.embedding.android.FlutterActivity

class MainActivity: FlutterActivity() {
    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
    GeneratedPluginRegistrant.registerWith(flutterEngine) 
  }

}
