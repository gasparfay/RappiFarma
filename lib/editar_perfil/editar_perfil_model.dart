import '/backend/api_requests/api_calls.dart';
import '/components/imagen_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'editar_perfil_widget.dart' show EditarPerfilWidget;
import 'package:flutter/material.dart';

class EditarPerfilModel extends FlutterFlowModel<EditarPerfilWidget> {
  ///  Local state fields for this page.

  bool subioFoto = false;

  ///  State fields for stateful widgets in this page.

  // State field(s) for nombre widget.
  FocusNode? nombreFocusNode;
  TextEditingController? nombreTextController;
  String? Function(BuildContext, String?)? nombreTextControllerValidator;
  // State field(s) for apellido widget.
  FocusNode? apellidoFocusNode;
  TextEditingController? apellidoTextController;
  String? Function(BuildContext, String?)? apellidoTextControllerValidator;
  // State field(s) for domicilio widget.
  FocusNode? domicilioFocusNode;
  TextEditingController? domicilioTextController;
  String? Function(BuildContext, String?)? domicilioTextControllerValidator;
  // State field(s) for telefono widget.
  FocusNode? telefonoFocusNode;
  TextEditingController? telefonoTextController;
  String? Function(BuildContext, String?)? telefonoTextControllerValidator;
  // State field(s) for obraSocial widget.
  String? obraSocialValue;
  FormFieldController<String>? obraSocialValueController;
  // State field(s) for numerobenficiario widget.
  FocusNode? numerobenficiarioFocusNode;
  TextEditingController? numerobenficiarioTextController;
  String? Function(BuildContext, String?)?
      numerobenficiarioTextControllerValidator;
  // Model for imagen component.
  late ImagenModel imagenModel;
  bool isDataUploading_nuevaFotoCarnet = false;
  FFUploadedFile uploadedLocalFile_nuevaFotoCarnet =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');

  // Stores action output result for [Backend Call - API (UploadToCloudinary)] action in Text widget.
  ApiCallResponse? apiResultda2;

  @override
  void initState(BuildContext context) {
    imagenModel = createModel(context, () => ImagenModel());
  }

  @override
  void dispose() {
    nombreFocusNode?.dispose();
    nombreTextController?.dispose();

    apellidoFocusNode?.dispose();
    apellidoTextController?.dispose();

    domicilioFocusNode?.dispose();
    domicilioTextController?.dispose();

    telefonoFocusNode?.dispose();
    telefonoTextController?.dispose();

    numerobenficiarioFocusNode?.dispose();
    numerobenficiarioTextController?.dispose();

    imagenModel.dispose();
  }
}
