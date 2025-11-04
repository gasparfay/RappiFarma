import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'login_farmacia_widget.dart' show LoginFarmaciaWidget;
import 'package:flutter/material.dart';

class LoginFarmaciaModel extends FlutterFlowModel<LoginFarmaciaWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for code widget.
  FocusNode? codeFocusNode;
  TextEditingController? codeTextController;
  late bool codeVisibility;
  String? Function(BuildContext, String?)? codeTextControllerValidator;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  FarmaciaRecord? authenticated;

  @override
  void initState(BuildContext context) {
    codeVisibility = false;
  }

  @override
  void dispose() {
    codeFocusNode?.dispose();
    codeTextController?.dispose();
  }
}
