import 'dart:convert';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:take_a_break/services/api_service.dart';

import '../models/user.dart';

class UserProvider extends ChangeNotifier {
  Client? client;
  bool isLoged = false;
  bool isLoading = false;
  ApiService api = ApiService();

  set IsLoading(bool value) {
    isLoading = value;
    notifyListeners();
  }

  set IsLoged(bool value) {
    isLoged = value;
    notifyListeners();
  }

  loginUser(emailAddress, password) async {
    IsLoading = true;
    try {
      final credential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: emailAddress, password: password);
      IsLoading = false;
      return {
        "status": true,
        "message": "Login correcto",
        "userUID": credential.user!.uid,
      };
    } on FirebaseAuthException catch (e) {
      IsLoading = false;
      if (e.code == 'user-not-found') {
        return {
          "status": false,
          "message": 'No se ha encontrado un usuario con ese correo',
        };
      } else if (e.code == 'wrong-password') {
        return {
          "status": false,
          "message": 'Verifique su contraseña',
        };
      }
    }
  }

  getUserData(String uid) async {
    try {
      IsLoading = true;
      final resp = await api.getUserInfo(uid);
      final decodedData = json.decode(resp);
      client = Client.fromJson(decodedData);
      IsLoading = false;
      IsLoged = true;
      return {
        "status": true,
        "message": "Datos obtenidos correctamente",
        "userData": resp,
      };
    } catch (e) {
      return {
        "status": false,
        "message":
            "Error al obtener los datos del usuario. Vuelva a intentarlo.",
      };
    }
  }

  logoutUser() async {
    await FirebaseAuth.instance.signOut();
    IsLoged = false;
    notifyListeners();
  }
}
