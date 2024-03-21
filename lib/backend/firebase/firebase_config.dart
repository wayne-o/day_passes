import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyAOKbBTrtf_jCx2f426hQ3FZ2J0U1BRxKw",
            authDomain: "day-passes-c61nwx.firebaseapp.com",
            projectId: "day-passes-c61nwx",
            storageBucket: "day-passes-c61nwx.appspot.com",
            messagingSenderId: "776094584961",
            appId: "1:776094584961:web:6a68d917e51a49937fbd80"));
  } else {
    await Firebase.initializeApp();
  }
}
