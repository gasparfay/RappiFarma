import '/flutter_flow/flutter_flow_util.dart';
import 'confirmar_orden_widget.dart' show ConfirmarOrdenWidget;
import 'package:flutter/material.dart';

class ConfirmarOrdenModel extends FlutterFlowModel<ConfirmarOrdenWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for productos widget.
  FocusNode? productosFocusNode;
  TextEditingController? productosTextController;
  String? Function(BuildContext, String?)? productosTextControllerValidator;
  // State field(s) for precioTotal widget.
  FocusNode? precioTotalFocusNode;
  TextEditingController? precioTotalTextController;
  String? Function(BuildContext, String?)? precioTotalTextControllerValidator;
  // State field(s) for descuento widget.
  FocusNode? descuentoFocusNode;
  TextEditingController? descuentoTextController;
  String? Function(BuildContext, String?)? descuentoTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    productosFocusNode?.dispose();
    productosTextController?.dispose();

    precioTotalFocusNode?.dispose();
    precioTotalTextController?.dispose();

    descuentoFocusNode?.dispose();
    descuentoTextController?.dispose();
  }
}
