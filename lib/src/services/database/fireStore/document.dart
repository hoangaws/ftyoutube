import 'package:cloud_firestore/cloud_firestore.dart';
import 'dart:async';
import '../../globals.dart';

class Document<T> {
  final Firestore _db = Firestore.instance;
  final String path;
  DocumentReference ref;

  Document({ this.path }) {
    ref = _db.document(path);
  }

  Future<T> getData() {
    return ref.get().then((v) => Global.models[T](v.data) as T);
  }

  Future<void> upsertData(Map data) {
    return ref.setData(Map<String, dynamic>.from(data), merge: true);
  }

  Stream<T> streamData() {
    return ref.snapshots().map((v) => Global.models[T](v.data) as T);
  }

}