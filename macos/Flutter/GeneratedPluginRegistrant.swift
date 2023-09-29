//
//  Generated file. Do not edit.
//

import FlutterMacOS
import Foundation

<<<<<<< HEAD
import firebase_core

func RegisterGeneratedPlugins(registry: FlutterPluginRegistry) {
=======
import cloud_firestore
import firebase_core

func RegisterGeneratedPlugins(registry: FlutterPluginRegistry) {
  FLTFirebaseFirestorePlugin.register(with: registry.registrar(forPlugin: "FLTFirebaseFirestorePlugin"))
>>>>>>> a9bbef90dfc670bf2aaa443d640d4328bb1f63b2
  FLTFirebaseCorePlugin.register(with: registry.registrar(forPlugin: "FLTFirebaseCorePlugin"))
}
