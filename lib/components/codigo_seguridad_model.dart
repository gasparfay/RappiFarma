import '/flutter_flow/flutter_flow_util.dart';
import 'codigo_seguridad_widget.dart' show CodigoSeguridadWidget;
import 'package:flutter/material.dart';

class CodigoSeguridadModel extends FlutterFlowModel<CodigoSeguridadWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for email widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailTextController;
  String? Function(BuildContext, String?)? emailTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    emailFocusNode?.dispose();
    emailTextController?.dispose();
  }
}
