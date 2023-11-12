import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsuarioRecord extends FirestoreRecord {
  UsuarioRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "id_usuario" field.
  int? _idUsuario;
  int get idUsuario => _idUsuario ?? 0;
  bool hasIdUsuario() => _idUsuario != null;

  // "nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  bool hasNombre() => _nombre != null;

  // "apellidos" field.
  String? _apellidos;
  String get apellidos => _apellidos ?? '';
  bool hasApellidos() => _apellidos != null;

  // "numero_telefonico" field.
  String? _numeroTelefonico;
  String get numeroTelefonico => _numeroTelefonico ?? '';
  bool hasNumeroTelefonico() => _numeroTelefonico != null;

  // "genero" field.
  String? _genero;
  String get genero => _genero ?? '';
  bool hasGenero() => _genero != null;

  // "fecha_nacimiento" field.
  DateTime? _fechaNacimiento;
  DateTime? get fechaNacimiento => _fechaNacimiento;
  bool hasFechaNacimiento() => _fechaNacimiento != null;

  // "cedula_profesional" field.
  String? _cedulaProfesional;
  String get cedulaProfesional => _cedulaProfesional ?? '';
  bool hasCedulaProfesional() => _cedulaProfesional != null;

  // "correo_electronico" field.
  String? _correoElectronico;
  String get correoElectronico => _correoElectronico ?? '';
  bool hasCorreoElectronico() => _correoElectronico != null;

  // "correo_verificacin" field.
  String? _correoVerificacin;
  String get correoVerificacin => _correoVerificacin ?? '';
  bool hasCorreoVerificacin() => _correoVerificacin != null;

  // "contrasea" field.
  String? _contrasea;
  String get contrasea => _contrasea ?? '';
  bool hasContrasea() => _contrasea != null;

  // "id_rol" field.
  int? _idRol;
  int get idRol => _idRol ?? 0;
  bool hasIdRol() => _idRol != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "isEspecialista" field.
  bool? _isEspecialista;
  bool get isEspecialista => _isEspecialista ?? false;
  bool hasIsEspecialista() => _isEspecialista != null;

  // "photo_to_scan" field.
  String? _photoToScan;
  String get photoToScan => _photoToScan ?? '';
  bool hasPhotoToScan() => _photoToScan != null;

  // "bio" field.
  String? _bio;
  String get bio => _bio ?? '';
  bool hasBio() => _bio != null;

  // "edad" field.
  int? _edad;
  int get edad => _edad ?? 0;
  bool hasEdad() => _edad != null;

  void _initializeFields() {
    _idUsuario = castToType<int>(snapshotData['id_usuario']);
    _nombre = snapshotData['nombre'] as String?;
    _apellidos = snapshotData['apellidos'] as String?;
    _numeroTelefonico = snapshotData['numero_telefonico'] as String?;
    _genero = snapshotData['genero'] as String?;
    _fechaNacimiento = snapshotData['fecha_nacimiento'] as DateTime?;
    _cedulaProfesional = snapshotData['cedula_profesional'] as String?;
    _correoElectronico = snapshotData['correo_electronico'] as String?;
    _correoVerificacin = snapshotData['correo_verificacin'] as String?;
    _contrasea = snapshotData['contrasea'] as String?;
    _idRol = castToType<int>(snapshotData['id_rol']);
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _isEspecialista = snapshotData['isEspecialista'] as bool?;
    _photoToScan = snapshotData['photo_to_scan'] as String?;
    _bio = snapshotData['bio'] as String?;
    _edad = castToType<int>(snapshotData['edad']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Usuario');

  static Stream<UsuarioRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsuarioRecord.fromSnapshot(s));

  static Future<UsuarioRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsuarioRecord.fromSnapshot(s));

  static UsuarioRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UsuarioRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsuarioRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsuarioRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsuarioRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsuarioRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsuarioRecordData({
  int? idUsuario,
  String? nombre,
  String? apellidos,
  String? numeroTelefonico,
  String? genero,
  DateTime? fechaNacimiento,
  String? cedulaProfesional,
  String? correoElectronico,
  String? correoVerificacin,
  String? contrasea,
  int? idRol,
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  bool? isEspecialista,
  String? photoToScan,
  String? bio,
  int? edad,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'id_usuario': idUsuario,
      'nombre': nombre,
      'apellidos': apellidos,
      'numero_telefonico': numeroTelefonico,
      'genero': genero,
      'fecha_nacimiento': fechaNacimiento,
      'cedula_profesional': cedulaProfesional,
      'correo_electronico': correoElectronico,
      'correo_verificacin': correoVerificacin,
      'contrasea': contrasea,
      'id_rol': idRol,
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
      'isEspecialista': isEspecialista,
      'photo_to_scan': photoToScan,
      'bio': bio,
      'edad': edad,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsuarioRecordDocumentEquality implements Equality<UsuarioRecord> {
  const UsuarioRecordDocumentEquality();

  @override
  bool equals(UsuarioRecord? e1, UsuarioRecord? e2) {
    return e1?.idUsuario == e2?.idUsuario &&
        e1?.nombre == e2?.nombre &&
        e1?.apellidos == e2?.apellidos &&
        e1?.numeroTelefonico == e2?.numeroTelefonico &&
        e1?.genero == e2?.genero &&
        e1?.fechaNacimiento == e2?.fechaNacimiento &&
        e1?.cedulaProfesional == e2?.cedulaProfesional &&
        e1?.correoElectronico == e2?.correoElectronico &&
        e1?.correoVerificacin == e2?.correoVerificacin &&
        e1?.contrasea == e2?.contrasea &&
        e1?.idRol == e2?.idRol &&
        e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.isEspecialista == e2?.isEspecialista &&
        e1?.photoToScan == e2?.photoToScan &&
        e1?.bio == e2?.bio &&
        e1?.edad == e2?.edad;
  }

  @override
  int hash(UsuarioRecord? e) => const ListEquality().hash([
        e?.idUsuario,
        e?.nombre,
        e?.apellidos,
        e?.numeroTelefonico,
        e?.genero,
        e?.fechaNacimiento,
        e?.cedulaProfesional,
        e?.correoElectronico,
        e?.correoVerificacin,
        e?.contrasea,
        e?.idRol,
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber,
        e?.isEspecialista,
        e?.photoToScan,
        e?.bio,
        e?.edad
      ]);

  @override
  bool isValidKey(Object? o) => o is UsuarioRecord;
}
