import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyA3g2d4KXfoBYc0_-jpulFJnOMORgo8m4Y",
            authDomain: "dioapp-9c080.firebaseapp.com",
            projectId: "dioapp-9c080",
            storageBucket: "dioapp-9c080.appspot.com",
            messagingSenderId: "157014149605",
            appId: "1:157014149605:web:485017214457eb9b00070c",
            measurementId: "G-XE70SPLTRL"));
  } else {
    await Firebase.initializeApp();
  }
}
