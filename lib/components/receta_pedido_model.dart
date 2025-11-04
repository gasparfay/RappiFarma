import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'receta_pedido_widget.dart' show RecetaPedidoWidget;
import 'package:flutter/material.dart';

class RecetaPedidoModel extends FlutterFlowModel<RecetaPedidoWidget> {
  ///  Local state fields for this component.

  OrdenConRecetaStruct? ordenAux;
  void updateOrdenAuxStruct(Function(OrdenConRecetaStruct) updateFn) {
    updateFn(ordenAux ??= OrdenConRecetaStruct());
  }

  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  List<FarmaciaRecord>? farmacias;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
