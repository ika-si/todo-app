import 'package:cloud_firestore/cloud_firestore.dart';

class Todo {
  String title;
  DateTime createdAt;
  Todo(DocumentSnapshot doc) {
    this.title = doc.data()['title'];

    final Timestamp timestamp = doc.data()['createAt'];
    this.createdAt = timestamp.toDate();
  }
}