// import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:p2p/app/observer/bloc_observer.dart';
import 'package:p2p/app/p2p_app.dart';
import 'package:p2p/firebase_options.dart';
import 'package:p2p/shared/services.dart';

// import 'package:boilerplate/';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  Bloc.observer = AppBlocObserver();
  await setupDependencies();
  runApp(const P2PApp());
}
