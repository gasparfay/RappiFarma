// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class OrdenConRecetaStruct extends FFFirebaseStruct {
  OrdenConRecetaStruct({
    String? receta,
    String? obraSocial,
    String? observaciones,
    String? direccion,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _receta = receta,
        _obraSocial = obraSocial,
        _observaciones = observaciones,
        _direccion = direccion,
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

  static OrdenConRecetaStruct fromMap(Map<String, dynamic> data) =>
      OrdenConRecetaStruct(
        receta: data['receta'] as String?,
        obraSocial: data['obraSocial'] as String?,
        observaciones: data['observaciones'] as String?,
        direccion: data['direccion'] as String?,
      );

  static OrdenConRecetaStruct? maybeFromMap(dynamic data) => data is Map
      ? OrdenConRecetaStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'receta': _receta,
        'obraSocial': _obraSocial,
        'observaciones': _observaciones,
        'direccion': _direccion,
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
      }.withoutNulls;

  static OrdenConRecetaStruct fromSerializableMap(Map<String, dynamic> data) =>
      OrdenConRecetaStruct(
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
      );

  @override
  String toString() => 'OrdenConRecetaStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is OrdenConRecetaStruct &&
        receta == other.receta &&
        obraSocial == other.obraSocial &&
        observaciones == other.observaciones &&
        direccion == other.direccion;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([receta, obraSocial, observaciones, direccion]);
}

OrdenConRecetaStruct createOrdenConRecetaStruct({
  String? receta,
  String? obraSocial,
  String? observaciones,
  String? direccion,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    OrdenConRecetaStruct(
      receta: receta,
      obraSocial: obraSocial,
      observaciones: observaciones,
      direccion: direccion,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

OrdenConRecetaStruct? updateOrdenConRecetaStruct(
  OrdenConRecetaStruct? ordenConReceta, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    ordenConReceta
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addOrdenConRecetaStructData(
  Map<String, dynamic> firestoreData,
  OrdenConRecetaStruct? ordenConReceta,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (ordenConReceta == null) {
    return;
  }
  if (ordenConReceta.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && ordenConReceta.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final ordenConRecetaData =
      getOrdenConRecetaFirestoreData(ordenConReceta, forFieldValue);
  final nestedData =
      ordenConRecetaData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = ordenConReceta.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getOrdenConRecetaFirestoreData(
  OrdenConRecetaStruct? ordenConReceta, [
  bool forFieldValue = false,
]) {
  if (ordenConReceta == null) {
    return {};
  }
  final firestoreData = mapToFirestore(ordenConReceta.toMap());

  // Add any Firestore field values
  ordenConReceta.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getOrdenConRecetaListFirestoreData(
  List<OrdenConRecetaStruct>? ordenConRecetas,
) =>
    ordenConRecetas
        ?.map((e) => getOrdenConRecetaFirestoreData(e, true))
        .toList() ??
    [];
