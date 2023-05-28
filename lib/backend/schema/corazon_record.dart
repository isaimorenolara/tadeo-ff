import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CorazonRecord extends FirestoreRecord {
  CorazonRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "like" field.
  bool? _like;
  bool get like => _like ?? false;
  bool hasLike() => _like != null;

  void _initializeFields() {
    _like = snapshotData['like'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('corazon');

  static Stream<CorazonRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CorazonRecord.fromSnapshot(s));

  static Future<CorazonRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CorazonRecord.fromSnapshot(s));

  static CorazonRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CorazonRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CorazonRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CorazonRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CorazonRecord(reference: ${reference.path}, data: $snapshotData)';
}

Map<String, dynamic> createCorazonRecordData({
  bool? like,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'like': like,
    }.withoutNulls,
  );

  return firestoreData;
}
