import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'register_widget.dart' show RegisterWidget;
import 'package:flutter/material.dart';

class RegisterModel extends FlutterFlowModel<RegisterWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for nombre widget.
  FocusNode? nombreFocusNode;
  TextEditingController? nombreTextController;
  String? Function(BuildContext, String?)? nombreTextControllerValidator;
  // State field(s) for apellido widget.
  FocusNode? apellidoFocusNode;
  TextEditingController? apellidoTextController;
  String? Function(BuildContext, String?)? apellidoTextControllerValidator;
  // State field(s) for dni widget.
  FocusNode? dniFocusNode;
  TextEditingController? dniTextController;
  String? Function(BuildContext, String?)? dniTextControllerValidator;
  // State field(s) for domicilio widget.
  FocusNode? domicilioFocusNode;
  TextEditingController? domicilioTextController;
  String? Function(BuildContext, String?)? domicilioTextControllerValidator;
  // State field(s) for telefono widget.
  FocusNode? telefonoFocusNode;
  TextEditingController? telefonoTextController;
  String? Function(BuildContext, String?)? telefonoTextControllerValidator;
  // State field(s) for email widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailTextController;
  String? Function(BuildContext, String?)? emailTextControllerValidator;
  // State field(s) for obrasocial widget.
  FocusNode? obrasocialFocusNode;
  TextEditingController? obrasocialTextController;
  String? Function(BuildContext, String?)? obrasocialTextControllerValidator;
  // State field(s) for numerobenficiario widget.
  FocusNode? numerobenficiarioFocusNode;
  TextEditingController? numerobenficiarioTextController;
  String? Function(BuildContext, String?)?
      numerobenficiarioTextControllerValidator;
  bool isDataUploading_uploadDataKbt = false;
  FFUploadedFile uploadedLocalFile_uploadDataKbt =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_uploadDataKbt = '';

  // State field(s) for password widget.
  FocusNode? passwordFocusNode;
  TextEditingController? passwordTextController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordTextControllerValidator;
  // State field(s) for password2 widget.
  FocusNode? password2FocusNode;
  TextEditingController? password2TextController;
  late bool password2Visibility;
  String? Function(BuildContext, String?)? password2TextControllerValidator;

  @override
  void initState(BuildContext context) {
    passwordVisibility = false;
    password2Visibility = false;
  }

  @override
  void dispose() {
    nombreFocusNode?.dispose();
    nombreTextController?.dispose();

    apellidoFocusNode?.dispose();
    apellidoTextController?.dispose();

    dniFocusNode?.dispose();
    dniTextController?.dispose();

    domicilioFocusNode?.dispose();
    domicilioTextController?.dispose();

    telefonoFocusNode?.dispose();
    telefonoTextController?.dispose();

    emailFocusNode?.dispose();
    emailTextController?.dispose();

    obrasocialFocusNode?.dispose();
    obrasocialTextController?.dispose();

    numerobenficiarioFocusNode?.dispose();
    numerobenficiarioTextController?.dispose();

    passwordFocusNode?.dispose();
    passwordTextController?.dispose();

    password2FocusNode?.dispose();
    password2TextController?.dispose();
  }
}
