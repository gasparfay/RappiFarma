import '/flutter_flow/flutter_flow_util.dart';
import 'confirmar_orden_widget.dart' show ConfirmarOrdenWidget;
import 'package:flutter/material.dart';

class ConfirmarOrdenModel extends FlutterFlowModel<ConfirmarOrdenWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for cantProductos widget.
  int? cantProductosValue;
  // State field(s) for descuento widget.
  FocusNode? descuentoFocusNode;
  TextEditingController? descuentoTextController;
  String? Function(BuildContext, String?)? descuentoTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    descuentoFocusNode?.dispose();
    descuentoTextController?.dispose();
  }
}
