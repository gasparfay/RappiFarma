// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class CompraStruct extends FFFirebaseStruct {
  CompraStruct({
    String? receta,
    String? obraSocial,
    String? observaciones,
    String? direccion,
    int? tiempoInicio,
    String? uid,
    double? precio,
    String? uidFarmacia,
    String? nombreFarmacia,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _receta = receta,
        _obraSocial = obraSocial,
        _observaciones = observaciones,
        _direccion = direccion,
        _tiempoInicio = tiempoInicio,
        _uid = uid,
        _precio = precio,
        _uidFarmacia = uidFarmacia,
        _nombreFarmacia = nombreFarmacia,
        super(firestoreUtilData);

  // "receta" field.
  String? _receta;
  String get receta => _receta ?? '';
  set receta(String? val) => _receta = val;

  bool hasReceta() => _receta != null;

  // "obraSocial" field.
  String? _obraSocial;
  String get obraSocial => _obraSocial ?? 'ninguna';
  set obraSocial(String? val) => _obraSocial = val;

  bool hasObraSocial() => _obraSocial != null;

  // "observaciones" field.
  String? _observaciones;
  String get observaciones => _observaciones ?? '';
  set observaciones(String? val) => _observaciones = val;

  bool hasObservaciones() => _observaciones != null;

  // "direccion" field.
  String? _direccion;
  String get direccion => _direccion ?? '';
  set direccion(String? val) => _direccion = val;

  bool hasDireccion() => _direccion != null;

  // "tiempoInicio" field.
  int? _tiempoInicio;
  int get tiempoInicio => _tiempoInicio ?? 0;
  set tiempoInicio(int? val) => _tiempoInicio = val;

  void incrementTiempoInicio(int amount) =>
      tiempoInicio = tiempoInicio + amount;

  bool hasTiempoInicio() => _tiempoInicio != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  set uid(String? val) => _uid = val;

  bool hasUid() => _uid != null;

  // "precio" field.
  double? _precio;
  double get precio => _precio ?? 0.0;
  set precio(double? val) => _precio = val;

  void incrementPrecio(double amount) => precio = precio + amount;

  bool hasPrecio() => _precio != null;

  // "uidFarmacia" field.
  String? _uidFarmacia;
  String get uidFarmacia => _uidFarmacia ?? '';
  set uidFarmacia(String? val) => _uidFarmacia = val;

  bool hasUidFarmacia() => _uidFarmacia != null;

  // "nombreFarmacia" field.
  String? _nombreFarmacia;
  String get nombreFarmacia => _nombreFarmacia ?? '';
  set nombreFarmacia(String? val) => _nombreFarmacia = val;

  bool hasNombreFarmacia() => _nombreFarmacia != null;

  static CompraStruct fromMap(Map<String, dynamic> data) => CompraStruct(
        receta: data['receta'] as String?,
        obraSocial: data['obraSocial'] as String?,
        observaciones: data['observaciones'] as String?,
        direccion: data['direccion'] as String?,
        tiempoInicio: castToType<int>(data['tiempoInicio']),
        uid: data['uid'] as String?,
        precio: castToType<double>(data['precio']),
        uidFarmacia: data['uidFarmacia'] as String?,
        nombreFarmacia: data['nombreFarmacia'] as String?,
      );

  static CompraStruct? maybeFromMap(dynamic data) =>
      data is Map ? CompraStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'receta': _receta,
        'obraSocial': _obraSocial,
        'observaciones': _observaciones,
        'direccion': _direccion,
        'tiempoInicio': _tiempoInicio,
        'uid': _uid,
        'precio': _precio,
        'uidFarmacia': _uidFarmacia,
        'nombreFarmacia': _nombreFarmacia,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'receta': serializeParam(
          _receta,
          ParamType.String,
        ),
        'obraSocial': serializeParam(
          _obraSocial,
          ParamType.String,
        ),
        'observaciones': serializeParam(
          _observaciones,
          ParamType.String,
        ),
        'direccion': serializeParam(
          _direccion,
          ParamType.String,
        ),
        'tiempoInicio': serializeParam(
          _tiempoInicio,
          ParamType.int,
        ),
        'uid': serializeParam(
          _uid,
          ParamType.String,
        ),
        'precio': serializeParam(
          _precio,
          ParamType.double,
        ),
        'uidFarmacia': serializeParam(
          _uidFarmacia,
          ParamType.String,
        ),
        'nombreFarmacia': serializeParam(
          _nombreFarmacia,
          ParamType.String,
        ),
      }.withoutNulls;

  static CompraStruct fromSerializableMap(Map<String, dynamic> data) =>
      CompraStruct(
        receta: deserializeParam(
          data['receta'],
          ParamType.String,
          false,
        ),
        obraSocial: deserializeParam(
          data['obraSocial'],
          ParamType.String,
          false,
        ),
        observaciones: deserializeParam(
          data['observaciones'],
          ParamType.String,
          false,
        ),
        direccion: deserializeParam(
          data['direccion'],
          ParamType.String,
          false,
        ),
        tiempoInicio: deserializeParam(
          data['tiempoInicio'],
          ParamType.int,
          false,
        ),
        uid: deserializeParam(
          data['uid'],
          ParamType.String,
          false,
        ),
        precio: deserializeParam(
          data['precio'],
          ParamType.double,
          false,
        ),
        uidFarmacia: deserializeParam(
          data['uidFarmacia'],
          ParamType.String,
          false,
        ),
        nombreFarmacia: deserializeParam(
          data['nombreFarmacia'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'CompraStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CompraStruct &&
        receta == other.receta &&
        obraSocial == other.obraSocial &&
        observaciones == other.observaciones &&
        direccion == other.direccion &&
        tiempoInicio == other.tiempoInicio &&
        uid == other.uid &&
        precio == other.precio &&
        uidFarmacia == other.uidFarmacia &&
        nombreFarmacia == other.nombreFarmacia;
  }

  @override
  int get hashCode => const ListEquality().hash([
        receta,
        obraSocial,
        observaciones,
        direccion,
        tiempoInicio,
        uid,
        precio,
        uidFarmacia,
        nombreFarmacia
      ]);
}

CompraStruct createCompraStruct({
  String? receta,
  String? obraSocial,
  String? observaciones,
  String? direccion,
  int? tiempoInicio,
  String? uid,
  double? precio,
  String? uidFarmacia,
  String? nombreFarmacia,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    CompraStruct(
      receta: receta,
      obraSocial: obraSocial,
      observaciones: observaciones,
      direccion: direccion,
      tiempoInicio: tiempoInicio,
      uid: uid,
      precio: precio,
      uidFarmacia: uidFarmacia,
      nombreFarmacia: nombreFarmacia,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

CompraStruct? updateCompraStruct(
  CompraStruct? compra, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    compra
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addCompraStructData(
  Map<String, dynamic> firestoreData,
  CompraStruct? compra,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (compra == null) {
    return;
  }
  if (compra.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && compra.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final compraData = getCompraFirestoreData(compra, forFieldValue);
  final nestedData = compraData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = compra.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getCompraFirestoreData(
  CompraStruct? compra, [
  bool forFieldValue = false,
]) {
  if (compra == null) {
    return {};
  }
  final firestoreData = mapToFirestore(compra.toMap());

  // Add any Firestore field values
  compra.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getCompraListFirestoreData(
  List<CompraStruct>? compras,
) =>
    compras?.map((e) => getCompraFirestoreData(e, true)).toList() ?? [];
