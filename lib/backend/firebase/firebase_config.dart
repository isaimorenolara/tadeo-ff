import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAjVFDwrKsdJiuJyKinY-zdNkSeRVmvnBs",
            authDomain: "recetario-4deaf.firebaseapp.com",
            projectId: "recetario-4deaf",
            storageBucket: "recetario-4deaf.appspot.com",
            messagingSenderId: "891232108276",
            appId: "1:891232108276:web:8d7c1020df18468adea8a1",
            measurementId: "G-01EXPDY60T"));
  } else {
    await Firebase.initializeApp();
  }
}
