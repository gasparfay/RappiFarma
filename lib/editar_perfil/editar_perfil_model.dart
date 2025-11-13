import '/backend/api_requests/api_calls.dart';
import '/components/imagen_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/index.dart';
import 'editar_perfil_widget.dart' show EditarPerfilWidget;
import 'package:flutter/material.dart';

class EditarPerfilModel extends FlutterFlowModel<EditarPerfilWidget> {
  ///  Local state fields for this page.

  bool subioFoto = false;

  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for nombre widget.
  FocusNode? nombreFocusNode;
  TextEditingController? nombreTextController;
  String? Function(BuildContext, String?)? nombreTextControllerValidator;
  String? _nombreTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Debe ingresar un nombre valido';
    }

    if (val.length < 2) {
      return 'El nombre debe tener almenos 2 letras';
    }

    return null;
  }

  // State field(s) for apellido widget.
  FocusNode? apellidoFocusNode;
  TextEditingController? apellidoTextController;
  String? Function(BuildContext, String?)? apellidoTextControllerValidator;
  String? _apellidoTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Debe ingresar un apellido valido';
    }

    if (val.length < 2) {
      return 'El apellido debe tener almenos 2 letras';
    }

    return null;
  }

  // State field(s) for domicilio widget.
  FocusNode? domicilioFocusNode;
  TextEditingController? domicilioTextController;
  String? Function(BuildContext, String?)? domicilioTextControllerValidator;
  String? _domicilioTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Debe ingresar un domicilio valido';
    }

    if (val.length < 4) {
      return 'El domicilio debe tener almenos 4 letras';
    }

    return null;
  }

  // State field(s) for telefono widget.
  FocusNode? telefonoFocusNode;
  TextEditingController? telefonoTextController;
  String? Function(BuildContext, String?)? telefonoTextControllerValidator;
  String? _telefonoTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Debe ingresar un telefono valido';
    }

    if (val.length < 6) {
      return 'El telefono debe tener almenos 6 digitos';
    }

    return null;
  }

  // State field(s) for obraSocial widget.
  String? obraSocialValue;
  FormFieldController<String>? obraSocialValueController;
  // State field(s) for numerobenficiario widget.
  FocusNode? numerobenficiarioFocusNode;
  TextEditingController? numerobenficiarioTextController;
  String? Function(BuildContext, String?)?
      numerobenficiarioTextControllerValidator;
  String? _numerobenficiarioTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Debe ingresar un numero de beneficiario valido';
    }

    return null;
  }

  // Model for imagen component.
  late ImagenModel imagenModel;
  bool isDataUploading_nuevaFotoCarnet = false;
  FFUploadedFile uploadedLocalFile_nuevaFotoCarnet =
      FFUploadedFile(bytes: Uint8List.fromList([]), originalFilename: '');

  // Stores action output result for [Backend Call - API (UploadToCloudinary)] action in Text widget.
  ApiCallResponse? apiResultda2;
  // Stores action output result for [Validate Form] action in Button widget.
  bool? validado;

  @override
  void initState(BuildContext context) {
    nombreTextControllerValidator = _nombreTextControllerValidator;
    apellidoTextControllerValidator = _apellidoTextControllerValidator;
    domicilioTextControllerValidator = _domicilioTextControllerValidator;
    telefonoTextControllerValidator = _telefonoTextControllerValidator;
    numerobenficiarioTextControllerValidator =
        _numerobenficiarioTextControllerValidator;
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
