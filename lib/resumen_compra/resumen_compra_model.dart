import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'resumen_compra_widget.dart' show ResumenCompraWidget;
import 'package:flutter/material.dart';

class ResumenCompraModel extends FlutterFlowModel<ResumenCompraWidget> {
  ///  Local state fields for this page.

  int? codigo;

  bool huellaValidada = false;

  List<ProductoStruct> prodsAux = [];
  void addToProdsAux(ProductoStruct item) => prodsAux.add(item);
  void removeFromProdsAux(ProductoStruct item) => prodsAux.remove(item);
  void removeAtIndexFromProdsAux(int index) => prodsAux.removeAt(index);
  void insertAtIndexInProdsAux(int index, ProductoStruct item) =>
      prodsAux.insert(index, item);
  void updateProdsAuxAtIndex(int index, Function(ProductoStruct) updateFn) =>
      prodsAux[index] = updateFn(prodsAux[index]);

  ///  State fields for stateful widgets in this page.

  bool huella = false;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  List<OfertaRecord>? ofertasUid;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  OrdenRecord? ordenUid;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
