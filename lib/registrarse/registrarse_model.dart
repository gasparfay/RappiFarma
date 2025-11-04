import '/backend/api_requests/api_calls.dart';
import '/components/imagen_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'registrarse_widget.dart' show RegistrarseWidget;
import 'package:flutter/material.dart';

class RegistrarseModel extends FlutterFlowModel<RegistrarseWidget> {
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
  // State field(s) for obraSocial widget.
  String? obraSocialValue;
  FormFieldController<String>? obraSocialValueController;
  // State field(s) for numerobenficiario widget.
  FocusNode? numerobenficiarioFocusNode;
  TextEditingController? numerobenficiarioTextController;
  String? Function(BuildContext, String?)?
      numerobenficiarioTextControllerValidator;
  bool isDataUploading_fotoCarnetSubida = false;
  FFUploadedFile uploadedLocalFile_fotoCarnetSubida =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');

  // Stores action output result for [Backend Call - API (UploadToCloudinary)] action in Container widget.
  ApiCallResponse? urlCarnet;
  // Model for imagen component.
  late ImagenModel imagenModel;
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
    imagenModel = createModel(context, () => ImagenModel());
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

    numerobenficiarioFocusNode?.dispose();
    numerobenficiarioTextController?.dispose();

    imagenModel.dispose();
    passwordFocusNode?.dispose();
    passwordTextController?.dispose();

    password2FocusNode?.dispose();
    password2TextController?.dispose();
  }
}
