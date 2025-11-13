import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  List<ProductoStruct> _productos = [];
  List<ProductoStruct> get productos => _productos;
  set productos(List<ProductoStruct> value) {
    _productos = value;
  }

  void addToProductos(ProductoStruct value) {
    productos.add(value);
  }

  void removeFromProductos(ProductoStruct value) {
    productos.remove(value);
  }

  void removeAtIndexFromProductos(int index) {
    productos.removeAt(index);
  }

  void updateProductosAtIndex(
    int index,
    ProductoStruct Function(ProductoStruct) updateFn,
  ) {
    productos[index] = updateFn(_productos[index]);
  }

  void insertAtIndexInProductos(int index, ProductoStruct value) {
    productos.insert(index, value);
  }
}
