import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class FarmaciaRecord extends FirestoreRecord {
  FarmaciaRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "codigo" field.
  String? _codigo;
  String get codigo => _codigo ?? '';
  bool hasCodigo() => _codigo != null;

  // "uid" field.
  int? _uid;
  int get uid => _uid ?? 0;
  bool hasUid() => _uid != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _codigo = snapshotData['codigo'] as String?;
    _uid = castToType<int>(snapshotData['uid']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Farmacia');

  static Stream<FarmaciaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => FarmaciaRecord.fromSnapshot(s));

  static Future<FarmaciaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => FarmaciaRecord.fromSnapshot(s));

  static FarmaciaRecord fromSnapshot(DocumentSnapshot snapshot) =>
      FarmaciaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static FarmaciaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      FarmaciaRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'FarmaciaRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is FarmaciaRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createFarmaciaRecordData({
  String? name,
  String? codigo,
  int? uid,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'codigo': codigo,
      'uid': uid,
    }.withoutNulls,
  );

  return firestoreData;
}

class FarmaciaRecordDocumentEquality implements Equality<FarmaciaRecord> {
  const FarmaciaRecordDocumentEquality();

  @override
  bool equals(FarmaciaRecord? e1, FarmaciaRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.codigo == e2?.codigo &&
        e1?.uid == e2?.uid;
  }

  @override
  int hash(FarmaciaRecord? e) =>
      const ListEquality().hash([e?.name, e?.codigo, e?.uid]);

  @override
  bool isValidKey(Object? o) => o is FarmaciaRecord;
}
