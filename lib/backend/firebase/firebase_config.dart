import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyA_mIjW1ilzS0KrurENyIxx2YOl_GvHT8c",
            authDomain: "rappifarma-5a9c0.firebaseapp.com",
            projectId: "rappifarma-5a9c0",
            storageBucket: "rappifarma-5a9c0.firebasestorage.app",
            messagingSenderId: "934663385169",
            appId: "1:934663385169:web:43259526ade964938d0870",
            measurementId: "G-XRH91XD64B"));
  } else {
    await Firebase.initializeApp();
  }
}
