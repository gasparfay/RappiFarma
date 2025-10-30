import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _ordenes = prefs
              .getStringList('ff_ordenes')
              ?.map((x) {
                try {
                  return OrdenConRecetaStruct.fromSerializableMap(
                      jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _ordenes;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  List<OrdenConRecetaStruct> _ordenes = [
    OrdenConRecetaStruct.fromSerializableMap(jsonDecode(
        '{\"receta\":\"https://picsum.photos/seed/699/600\",\"obraSocial\":\"Hello World\",\"observaciones\":\"Hello World\",\"direccion\":\"Hello World\"}'))
  ];
  List<OrdenConRecetaStruct> get ordenes => _ordenes;
  set ordenes(List<OrdenConRecetaStruct> value) {
    _ordenes = value;
    prefs.setStringList('ff_ordenes', value.map((x) => x.serialize()).toList());
  }

  void addToOrdenes(OrdenConRecetaStruct value) {
    ordenes.add(value);
    prefs.setStringList(
        'ff_ordenes', _ordenes.map((x) => x.serialize()).toList());
  }

  void removeFromOrdenes(OrdenConRecetaStruct value) {
    ordenes.remove(value);
    prefs.setStringList(
        'ff_ordenes', _ordenes.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromOrdenes(int index) {
    ordenes.removeAt(index);
    prefs.setStringList(
        'ff_ordenes', _ordenes.map((x) => x.serialize()).toList());
  }

  void updateOrdenesAtIndex(
    int index,
    OrdenConRecetaStruct Function(OrdenConRecetaStruct) updateFn,
  ) {
    ordenes[index] = updateFn(_ordenes[index]);
    prefs.setStringList(
        'ff_ordenes', _ordenes.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInOrdenes(int index, OrdenConRecetaStruct value) {
    ordenes.insert(index, value);
    prefs.setStringList(
        'ff_ordenes', _ordenes.map((x) => x.serialize()).toList());
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
