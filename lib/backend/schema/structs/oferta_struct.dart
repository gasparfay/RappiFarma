// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class OfertaStruct extends FFFirebaseStruct {
  OfertaStruct({
    double? precioTotal,
    double? descuentoOS,
    String? productos,
    String? nombreFarmacia,
    String? direccion,
    String? uid,
    String? uidFarmacia,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _precioTotal = precioTotal,
        _descuentoOS = descuentoOS,
        _productos = productos,
        _nombreFarmacia = nombreFarmacia,
        _direccion = direccion,
        _uid = uid,
        _uidFarmacia = uidFarmacia,
        super(firestoreUtilData);

  // "precioTotal" field.
  double? _precioTotal;
  double get precioTotal => _precioTotal ?? 0.0;
  set precioTotal(double? val) => _precioTotal = val;

  void incrementPrecioTotal(double amount) =>
      precioTotal = precioTotal + amount;

  bool hasPrecioTotal() => _precioTotal != null;

  // "descuentoOS" field.
  double? _descuentoOS;
  double get descuentoOS => _descuentoOS ?? 0.0;
  set descuentoOS(double? val) => _descuentoOS = val;

  void incrementDescuentoOS(double amount) =>
      descuentoOS = descuentoOS + amount;

  bool hasDescuentoOS() => _descuentoOS != null;

  // "productos" field.
  String? _productos;
  String get productos => _productos ?? '';
  set productos(String? val) => _productos = val;

  bool hasProductos() => _productos != null;

  // "nombreFarmacia" field.
  String? _nombreFarmacia;
  String get nombreFarmacia => _nombreFarmacia ?? '';
  set nombreFarmacia(String? val) => _nombreFarmacia = val;

  bool hasNombreFarmacia() => _nombreFarmacia != null;

  // "direccion" field.
  String? _direccion;
  String get direccion => _direccion ?? '';
  set direccion(String? val) => _direccion = val;

  bool hasDireccion() => _direccion != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  set uid(String? val) => _uid = val;

  bool hasUid() => _uid != null;

  // "uidFarmacia" field.
  String? _uidFarmacia;
  String get uidFarmacia => _uidFarmacia ?? '';
  set uidFarmacia(String? val) => _uidFarmacia = val;

  bool hasUidFarmacia() => _uidFarmacia != null;

  static OfertaStruct fromMap(Map<String, dynamic> data) => OfertaStruct(
        precioTotal: castToType<double>(data['precioTotal']),
        descuentoOS: castToType<double>(data['descuentoOS']),
        productos: data['productos'] as String?,
        nombreFarmacia: data['nombreFarmacia'] as String?,
        direccion: data['direccion'] as String?,
        uid: data['uid'] as String?,
        uidFarmacia: data['uidFarmacia'] as String?,
      );

  static OfertaStruct? maybeFromMap(dynamic data) =>
      data is Map ? OfertaStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'precioTotal': _precioTotal,
        'descuentoOS': _descuentoOS,
        'productos': _productos,
        'nombreFarmacia': _nombreFarmacia,
        'direccion': _direccion,
        'uid': _uid,
        'uidFarmacia': _uidFarmacia,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'precioTotal': serializeParam(
          _precioTotal,
          ParamType.double,
        ),
        'descuentoOS': serializeParam(
          _descuentoOS,
          ParamType.double,
        ),
        'productos': serializeParam(
          _productos,
          ParamType.String,
        ),
        'nombreFarmacia': serializeParam(
          _nombreFarmacia,
          ParamType.String,
        ),
        'direccion': serializeParam(
          _direccion,
          ParamType.String,
        ),
        'uid': serializeParam(
          _uid,
          ParamType.String,
        ),
        'uidFarmacia': serializeParam(
          _uidFarmacia,
          ParamType.String,
        ),
      }.withoutNulls;

  static OfertaStruct fromSerializableMap(Map<String, dynamic> data) =>
      OfertaStruct(
        precioTotal: deserializeParam(
          data['precioTotal'],
          ParamType.double,
          false,
        ),
        descuentoOS: deserializeParam(
          data['descuentoOS'],
          ParamType.double,
          false,
        ),
        productos: deserializeParam(
          data['productos'],
          ParamType.String,
          false,
        ),
        nombreFarmacia: deserializeParam(
          data['nombreFarmacia'],
          ParamType.String,
          false,
        ),
        direccion: deserializeParam(
          data['direccion'],
          ParamType.String,
          false,
        ),
        uid: deserializeParam(
          data['uid'],
          ParamType.String,
          false,
        ),
        uidFarmacia: deserializeParam(
          data['uidFarmacia'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'OfertaStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is OfertaStruct &&
        precioTotal == other.precioTotal &&
        descuentoOS == other.descuentoOS &&
        productos == other.productos &&
        nombreFarmacia == other.nombreFarmacia &&
        direccion == other.direccion &&
        uid == other.uid &&
        uidFarmacia == other.uidFarmacia;
  }

  @override
  int get hashCode => const ListEquality().hash([
        precioTotal,
        descuentoOS,
        productos,
        nombreFarmacia,
        direccion,
        uid,
        uidFarmacia
      ]);
}

OfertaStruct createOfertaStruct({
  double? precioTotal,
  double? descuentoOS,
  String? productos,
  String? nombreFarmacia,
  String? direccion,
  String? uid,
  String? uidFarmacia,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    OfertaStruct(
      precioTotal: precioTotal,
      descuentoOS: descuentoOS,
      productos: productos,
      nombreFarmacia: nombreFarmacia,
      direccion: direccion,
      uid: uid,
      uidFarmacia: uidFarmacia,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

OfertaStruct? updateOfertaStruct(
  OfertaStruct? oferta, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    oferta
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addOfertaStructData(
  Map<String, dynamic> firestoreData,
  OfertaStruct? oferta,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (oferta == null) {
    return;
  }
  if (oferta.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && oferta.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final ofertaData = getOfertaFirestoreData(oferta, forFieldValue);
  final nestedData = ofertaData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = oferta.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getOfertaFirestoreData(
  OfertaStruct? oferta, [
  bool forFieldValue = false,
]) {
  if (oferta == null) {
    return {};
  }
  final firestoreData = mapToFirestore(oferta.toMap());

  // Add any Firestore field values
  oferta.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getOfertaListFirestoreData(
  List<OfertaStruct>? ofertas,
) =>
    ofertas?.map((e) => getOfertaFirestoreData(e, true)).toList() ?? [];
