import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ArticuloRecord extends FirestoreRecord {
  ArticuloRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "foto_articulo" field.
  String? _fotoArticulo;
  String get fotoArticulo => _fotoArticulo ?? '';
  bool hasFotoArticulo() => _fotoArticulo != null;

  // "titulo" field.
  String? _titulo;
  String get titulo => _titulo ?? '';
  bool hasTitulo() => _titulo != null;

  // "descripcion" field.
  String? _descripcion;
  String get descripcion => _descripcion ?? '';
  bool hasDescripcion() => _descripcion != null;

  // "fecha" field.
  DateTime? _fecha;
  DateTime? get fecha => _fecha;
  bool hasFecha() => _fecha != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "apellidos" field.
  String? _apellidos;
  String get apellidos => _apellidos ?? '';
  bool hasApellidos() => _apellidos != null;

  void _initializeFields() {
    _fotoArticulo = snapshotData['foto_articulo'] as String?;
    _titulo = snapshotData['titulo'] as String?;
    _descripcion = snapshotData['descripcion'] as String?;
    _fecha = snapshotData['fecha'] as DateTime?;
    _name = snapshotData['name'] as String?;
    _apellidos = snapshotData['apellidos'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Articulo');

  static Stream<ArticuloRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ArticuloRecord.fromSnapshot(s));

  static Future<ArticuloRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ArticuloRecord.fromSnapshot(s));

  static ArticuloRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ArticuloRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ArticuloRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ArticuloRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ArticuloRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ArticuloRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createArticuloRecordData({
  String? fotoArticulo,
  String? titulo,
  String? descripcion,
  DateTime? fecha,
  String? name,
  String? apellidos,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'foto_articulo': fotoArticulo,
      'titulo': titulo,
      'descripcion': descripcion,
      'fecha': fecha,
      'name': name,
      'apellidos': apellidos,
    }.withoutNulls,
  );

  return firestoreData;
}

class ArticuloRecordDocumentEquality implements Equality<ArticuloRecord> {
  const ArticuloRecordDocumentEquality();

  @override
  bool equals(ArticuloRecord? e1, ArticuloRecord? e2) {
    return e1?.fotoArticulo == e2?.fotoArticulo &&
        e1?.titulo == e2?.titulo &&
        e1?.descripcion == e2?.descripcion &&
        e1?.fecha == e2?.fecha &&
        e1?.name == e2?.name &&
        e1?.apellidos == e2?.apellidos;
  }

  @override
  int hash(ArticuloRecord? e) => const ListEquality().hash([
        e?.fotoArticulo,
        e?.titulo,
        e?.descripcion,
        e?.fecha,
        e?.name,
        e?.apellidos
      ]);

  @override
  bool isValidKey(Object? o) => o is ArticuloRecord;
}
