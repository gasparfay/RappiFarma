// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CompraStruct extends FFFirebaseStruct {
  CompraStruct({
    String? receta,
    String? obraSocial,
    String? observaciones,
    String? direccion,
    DateTime? tiempoInicio,
    String? uid,
    double? precio,
    String? uidFarmacia,
    String? nombreFarmacia,
    int? codigo,
    List<ProductoStruct>? productos,
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
        _codigo = codigo,
        _productos = productos,
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
  DateTime? _tiempoInicio;
  DateTime? get tiempoInicio => _tiempoInicio;
  set tiempoInicio(DateTime? val) => _tiempoInicio = val;

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

  // "codigo" field.
  int? _codigo;
  int get codigo => _codigo ?? 0;
  set codigo(int? val) => _codigo = val;

  void incrementCodigo(int amount) => codigo = codigo + amount;

  bool hasCodigo() => _codigo != null;

  // "productos" field.
  List<ProductoStruct>? _productos;
  List<ProductoStruct> get productos => _productos ?? const [];
  set productos(List<ProductoStruct>? val) => _productos = val;

  void updateProductos(Function(List<ProductoStruct>) updateFn) {
    updateFn(_productos ??= []);
  }

  bool hasProductos() => _productos != null;

  static CompraStruct fromMap(Map<String, dynamic> data) => CompraStruct(
        receta: data['receta'] as String?,
        obraSocial: data['obraSocial'] as String?,
        observaciones: data['observaciones'] as String?,
        direccion: data['direccion'] as String?,
        tiempoInicio: data['tiempoInicio'] as DateTime?,
        uid: data['uid'] as String?,
        precio: castToType<double>(data['precio']),
        uidFarmacia: data['uidFarmacia'] as String?,
        nombreFarmacia: data['nombreFarmacia'] as String?,
        codigo: castToType<int>(data['codigo']),
        productos: getStructList(
          data['productos'],
          ProductoStruct.fromMap,
        ),
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
        'codigo': _codigo,
        'productos': _productos?.map((e) => e.toMap()).toList(),
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
          ParamType.DateTime,
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
        'codigo': serializeParam(
          _codigo,
          ParamType.int,
        ),
        'productos': serializeParam(
          _productos,
          ParamType.DataStruct,
          isList: true,
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
          ParamType.DateTime,
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
        codigo: deserializeParam(
          data['codigo'],
          ParamType.int,
          false,
        ),
        productos: deserializeStructParam<ProductoStruct>(
          data['productos'],
          ParamType.DataStruct,
          true,
          structBuilder: ProductoStruct.fromSerializableMap,
        ),
      );

  @override
  String toString() => 'CompraStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is CompraStruct &&
        receta == other.receta &&
        obraSocial == other.obraSocial &&
        observaciones == other.observaciones &&
        direccion == other.direccion &&
        tiempoInicio == other.tiempoInicio &&
        uid == other.uid &&
        precio == other.precio &&
        uidFarmacia == other.uidFarmacia &&
        nombreFarmacia == other.nombreFarmacia &&
        codigo == other.codigo &&
        listEquality.equals(productos, other.productos);
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
        nombreFarmacia,
        codigo,
        productos
      ]);
}

CompraStruct createCompraStruct({
  String? receta,
  String? obraSocial,
  String? observaciones,
  String? direccion,
  DateTime? tiempoInicio,
  String? uid,
  double? precio,
  String? uidFarmacia,
  String? nombreFarmacia,
  int? codigo,
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
      codigo: codigo,
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
