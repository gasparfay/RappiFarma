import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CompraRecord extends FirestoreRecord {
  CompraRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "compra" field.
  CompraStruct? _compra;
  CompraStruct get compra => _compra ?? CompraStruct();
  bool hasCompra() => _compra != null;

  void _initializeFields() {
    _compra = snapshotData['compra'] is CompraStruct
        ? snapshotData['compra']
        : CompraStruct.maybeFromMap(snapshotData['compra']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Compra');

  static Stream<CompraRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CompraRecord.fromSnapshot(s));

  static Future<CompraRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CompraRecord.fromSnapshot(s));

  static CompraRecord fromSnapshot(DocumentSnapshot snapshot) => CompraRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CompraRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CompraRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CompraRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CompraRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCompraRecordData({
  CompraStruct? compra,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'compra': CompraStruct().toMap(),
    }.withoutNulls,
  );

  // Handle nested data for "compra" field.
  addCompraStructData(firestoreData, compra, 'compra');

  return firestoreData;
}

class CompraRecordDocumentEquality implements Equality<CompraRecord> {
  const CompraRecordDocumentEquality();

  @override
  bool equals(CompraRecord? e1, CompraRecord? e2) {
    return e1?.compra == e2?.compra;
  }

  @override
  int hash(CompraRecord? e) => const ListEquality().hash([e?.compra]);

  @override
  bool isValidKey(Object? o) => o is CompraRecord;
}
