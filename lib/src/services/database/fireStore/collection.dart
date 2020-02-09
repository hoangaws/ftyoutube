import 'package:cloud_firestore/cloud_firestore.dart';
import 'dart:async';
import '../../globals.dart';

class Collection<T> {
  final Firestore _db = Firestore.instance;
  final String path;
  CollectionReference ref;

  Collection({ this.path }) {
    ref = _db.collection(path);
  }

  Future<List<T>> getData() async {
    var snapshots = await ref.getDocuments();


    var sas = await Global.images.downloadFile("lesson1.jpg");

    return snapshots.documents.map((doc) => Global.models[T](doc.data) as T ).toList();
  }

  Future<bool> addDocument(Map data) async {
    var snapshots = await ref.add(data);
    return (snapshots != null);
  }

  Future<bool> deleteDocumentById(String id) async {
    var snapshots = ref.document(id).delete();
    return (snapshots != null);
  }

  Future<T> getDocumentById(String id) async {
    var snapshots = ref.document(id).get() as T;
    return snapshots;
  }

  Stream<List<T>> streamData() {
    return ref.snapshots().map((list) => list.documents.map((doc) => Global.models[T](doc.data) as T) );
  }
}