import '/flutter_flow/flutter_flow_util.dart';
import 'producto_widget.dart' show ProductoWidget;
import 'package:flutter/material.dart';

class ProductoModel extends FlutterFlowModel<ProductoWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for productos widget.
  FocusNode? productosFocusNode1;
  TextEditingController? productosTextController1;
  String? Function(BuildContext, String?)? productosTextController1Validator;
  // State field(s) for productos widget.
  FocusNode? productosFocusNode2;
  TextEditingController? productosTextController2;
  String? Function(BuildContext, String?)? productosTextController2Validator;
  // State field(s) for cantUnidades widget.
  int? cantUnidadesValue;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    productosFocusNode1?.dispose();
    productosTextController1?.dispose();

    productosFocusNode2?.dispose();
    productosTextController2?.dispose();
  }
}
