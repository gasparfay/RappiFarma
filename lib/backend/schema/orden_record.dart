import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OrdenRecord extends FirestoreRecord {
  OrdenRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "orden" field.
  OrdenConRecetaStruct? _orden;
  OrdenConRecetaStruct get orden => _orden ?? OrdenConRecetaStruct();
  bool hasOrden() => _orden != null;

  void _initializeFields() {
    _orden = snapshotData['orden'] is OrdenConRecetaStruct
        ? snapshotData['orden']
        : OrdenConRecetaStruct.maybeFromMap(snapshotData['orden']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Orden');

  static Stream<OrdenRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => OrdenRecord.fromSnapshot(s));

  static Future<OrdenRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => OrdenRecord.fromSnapshot(s));

  static OrdenRecord fromSnapshot(DocumentSnapshot snapshot) => OrdenRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static OrdenRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      OrdenRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'OrdenRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is OrdenRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createOrdenRecordData({
  OrdenConRecetaStruct? orden,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'orden': OrdenConRecetaStruct().toMap(),
    }.withoutNulls,
  );

  // Handle nested data for "orden" field.
  addOrdenConRecetaStructData(firestoreData, orden, 'orden');

  return firestoreData;
}

class OrdenRecordDocumentEquality implements Equality<OrdenRecord> {
  const OrdenRecordDocumentEquality();

  @override
  bool equals(OrdenRecord? e1, OrdenRecord? e2) {
    return e1?.orden == e2?.orden;
  }

  @override
  int hash(OrdenRecord? e) => const ListEquality().hash([e?.orden]);

  @override
  bool isValidKey(Object? o) => o is OrdenRecord;
}
