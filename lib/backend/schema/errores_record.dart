import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ErroresRecord extends FirestoreRecord {
  ErroresRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "usuario" field.
  DocumentReference? _usuario;
  DocumentReference? get usuario => _usuario;
  bool hasUsuario() => _usuario != null;

  // "fecha" field.
  DateTime? _fecha;
  DateTime? get fecha => _fecha;
  bool hasFecha() => _fecha != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _description = snapshotData['description'] as String?;
    _title = snapshotData['title'] as String?;
    _usuario = snapshotData['usuario'] as DocumentReference?;
    _fecha = snapshotData['fecha'] as DateTime?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('errores')
          : FirebaseFirestore.instance.collectionGroup('errores');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('errores').doc();

  static Stream<ErroresRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ErroresRecord.fromSnapshot(s));

  static Future<ErroresRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ErroresRecord.fromSnapshot(s));

  static ErroresRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ErroresRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ErroresRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ErroresRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ErroresRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ErroresRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createErroresRecordData({
  String? description,
  String? title,
  DocumentReference? usuario,
  DateTime? fecha,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'description': description,
      'title': title,
      'usuario': usuario,
      'fecha': fecha,
    }.withoutNulls,
  );

  return firestoreData;
}

class ErroresRecordDocumentEquality implements Equality<ErroresRecord> {
  const ErroresRecordDocumentEquality();

  @override
  bool equals(ErroresRecord? e1, ErroresRecord? e2) {
    return e1?.description == e2?.description &&
        e1?.title == e2?.title &&
        e1?.usuario == e2?.usuario &&
        e1?.fecha == e2?.fecha;
  }

  @override
  int hash(ErroresRecord? e) => const ListEquality()
      .hash([e?.description, e?.title, e?.usuario, e?.fecha]);

  @override
  bool isValidKey(Object? o) => o is ErroresRecord;
}
