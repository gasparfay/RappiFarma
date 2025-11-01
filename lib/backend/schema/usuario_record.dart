import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsuarioRecord extends FirestoreRecord {
  UsuarioRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "edited_time" field.
  DateTime? _editedTime;
  DateTime? get editedTime => _editedTime;
  bool hasEditedTime() => _editedTime != null;

  // "nombreObraSocial" field.
  String? _nombreObraSocial;
  String get nombreObraSocial => _nombreObraSocial ?? '';
  bool hasNombreObraSocial() => _nombreObraSocial != null;

  // "domicilio" field.
  String? _domicilio;
  String get domicilio => _domicilio ?? '';
  bool hasDomicilio() => _domicilio != null;

  // "numeroObraSocial" field.
  String? _numeroObraSocial;
  String get numeroObraSocial => _numeroObraSocial ?? '';
  bool hasNumeroObraSocial() => _numeroObraSocial != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  bool hasNombre() => _nombre != null;

  // "apellido" field.
  String? _apellido;
  String get apellido => _apellido ?? '';
  bool hasApellido() => _apellido != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "carnetObraSocial" field.
  String? _carnetObraSocial;
  String get carnetObraSocial => _carnetObraSocial ?? '';
  bool hasCarnetObraSocial() => _carnetObraSocial != null;

  // "pedidoActivo" field.
  bool? _pedidoActivo;
  bool get pedidoActivo => _pedidoActivo ?? false;
  bool hasPedidoActivo() => _pedidoActivo != null;

  // "codigoSeguridad" field.
  int? _codigoSeguridad;
  int get codigoSeguridad => _codigoSeguridad ?? 0;
  bool hasCodigoSeguridad() => _codigoSeguridad != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _editedTime = snapshotData['edited_time'] as DateTime?;
    _nombreObraSocial = snapshotData['nombreObraSocial'] as String?;
    _domicilio = snapshotData['domicilio'] as String?;
    _numeroObraSocial = snapshotData['numeroObraSocial'] as String?;
    _uid = snapshotData['uid'] as String?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _nombre = snapshotData['nombre'] as String?;
    _apellido = snapshotData['apellido'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _carnetObraSocial = snapshotData['carnetObraSocial'] as String?;
    _pedidoActivo = snapshotData['pedidoActivo'] as bool?;
    _codigoSeguridad = castToType<int>(snapshotData['codigoSeguridad']);
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
  String? email,
  DateTime? createdTime,
  DateTime? editedTime,
  String? nombreObraSocial,
  String? domicilio,
  String? numeroObraSocial,
  String? uid,
  String? phoneNumber,
  String? nombre,
  String? apellido,
  String? displayName,
  String? photoUrl,
  String? carnetObraSocial,
  bool? pedidoActivo,
  int? codigoSeguridad,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'created_time': createdTime,
      'edited_time': editedTime,
      'nombreObraSocial': nombreObraSocial,
      'domicilio': domicilio,
      'numeroObraSocial': numeroObraSocial,
      'uid': uid,
      'phone_number': phoneNumber,
      'nombre': nombre,
      'apellido': apellido,
      'display_name': displayName,
      'photo_url': photoUrl,
      'carnetObraSocial': carnetObraSocial,
      'pedidoActivo': pedidoActivo,
      'codigoSeguridad': codigoSeguridad,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsuarioRecordDocumentEquality implements Equality<UsuarioRecord> {
  const UsuarioRecordDocumentEquality();

  @override
  bool equals(UsuarioRecord? e1, UsuarioRecord? e2) {
    return e1?.email == e2?.email &&
        e1?.createdTime == e2?.createdTime &&
        e1?.editedTime == e2?.editedTime &&
        e1?.nombreObraSocial == e2?.nombreObraSocial &&
        e1?.domicilio == e2?.domicilio &&
        e1?.numeroObraSocial == e2?.numeroObraSocial &&
        e1?.uid == e2?.uid &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.nombre == e2?.nombre &&
        e1?.apellido == e2?.apellido &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.carnetObraSocial == e2?.carnetObraSocial &&
        e1?.pedidoActivo == e2?.pedidoActivo &&
        e1?.codigoSeguridad == e2?.codigoSeguridad;
  }

  @override
  int hash(UsuarioRecord? e) => const ListEquality().hash([
        e?.email,
        e?.createdTime,
        e?.editedTime,
        e?.nombreObraSocial,
        e?.domicilio,
        e?.numeroObraSocial,
        e?.uid,
        e?.phoneNumber,
        e?.nombre,
        e?.apellido,
        e?.displayName,
        e?.photoUrl,
        e?.carnetObraSocial,
        e?.pedidoActivo,
        e?.codigoSeguridad
      ]);

  @override
  bool isValidKey(Object? o) => o is UsuarioRecord;
}
