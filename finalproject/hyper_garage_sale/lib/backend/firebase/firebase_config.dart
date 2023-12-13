import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCJc94spLOO3cq32SvCSTHuz4cb5N13j70",
            authDomain: "hypergaragesale-57232.firebaseapp.com",
            projectId: "hypergaragesale-57232",
            storageBucket: "hypergaragesale-57232.appspot.com",
            messagingSenderId: "1025592660012",
            appId: "1:1025592660012:web:c1cd5678d6aa3d7c53c189"));
  } else {
    await Firebase.initializeApp();
  }
}
