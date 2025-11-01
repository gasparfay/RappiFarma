import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class OfertaRecord extends FirestoreRecord {
  OfertaRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "oferta" field.
  OfertaStruct? _oferta;
  OfertaStruct get oferta => _oferta ?? OfertaStruct();
  bool hasOferta() => _oferta != null;

  void _initializeFields() {
    _oferta = snapshotData['oferta'] is OfertaStruct
        ? snapshotData['oferta']
        : OfertaStruct.maybeFromMap(snapshotData['oferta']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Oferta');

  static Stream<OfertaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => OfertaRecord.fromSnapshot(s));

  static Future<OfertaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => OfertaRecord.fromSnapshot(s));

  static OfertaRecord fromSnapshot(DocumentSnapshot snapshot) => OfertaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static OfertaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      OfertaRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'OfertaRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is OfertaRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createOfertaRecordData({
  OfertaStruct? oferta,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'oferta': OfertaStruct().toMap(),
    }.withoutNulls,
  );

  // Handle nested data for "oferta" field.
  addOfertaStructData(firestoreData, oferta, 'oferta');

  return firestoreData;
}

class OfertaRecordDocumentEquality implements Equality<OfertaRecord> {
  const OfertaRecordDocumentEquality();

  @override
  bool equals(OfertaRecord? e1, OfertaRecord? e2) {
    return e1?.oferta == e2?.oferta;
  }

  @override
  int hash(OfertaRecord? e) => const ListEquality().hash([e?.oferta]);

  @override
  bool isValidKey(Object? o) => o is OfertaRecord;
}
