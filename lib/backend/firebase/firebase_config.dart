import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBd7izYM0_81pU36adeLFU7D7Sye1ZWCUI",
            authDomain: "jtcofficail-rka9ls.firebaseapp.com",
            projectId: "jtcofficail-rka9ls",
            storageBucket: "jtcofficail-rka9ls.firebasestorage.app",
            messagingSenderId: "890459659617",
            appId: "1:890459659617:web:31a1f097d3ee4f0f84b920",
            measurementId: "G-JQ1L378RVY"));
  } else {
    await Firebase.initializeApp();
  }
}
