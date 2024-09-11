import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyBFglizc-N3wiXuqwI5QBgXGPGnj9SWq_U",
            authDomain: "nota-go-71xzqz.firebaseapp.com",
            projectId: "nota-go-71xzqz",
            storageBucket: "nota-go-71xzqz.appspot.com",
            messagingSenderId: "950430624090",
            appId: "1:950430624090:web:6cfb0186a9c47969dc2b63"));
  } else {
    await Firebase.initializeApp();
  }
}
