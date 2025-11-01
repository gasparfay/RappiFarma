import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'recuperar_contrasenia_widget.dart' show RecuperarContraseniaWidget;
import 'package:flutter/material.dart';

class RecuperarContraseniaModel
    extends FlutterFlowModel<RecuperarContraseniaWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for email widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailTextController;
  String? Function(BuildContext, String?)? emailTextControllerValidator;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  UsuarioRecord? registrado;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    emailFocusNode?.dispose();
    emailTextController?.dispose();
  }
}
