import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
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

  // State field(s) for dni widget.
  FocusNode? dniFocusNode;
  TextEditingController? dniTextController;
  String? Function(BuildContext, String?)? dniTextControllerValidator;
  String? _dniTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Debe ingresar un DNI valido';
    }

    if (val.length < 6) {
      return 'El DNI debe tener almenos 6 digitos';
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
      return 'El domicilio debe tener almenos 4 caracteres';
    }

    return null;
  }

  // State field(s) for telefono widget.
  FocusNode? telefonoFocusNode;
  TextEditingController? telefonoTextController;
  String? Function(BuildContext, String?)? telefonoTextControllerValidator;
  String? _telefonoTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Debe ingresar un numero de telefono valido';
    }

    if (val.length < 6) {
      return 'El numero de telefono debe tener almenos 6 caracteres';
    }

    return null;
  }

  // State field(s) for email widget.
  FocusNode? emailFocusNode;
  TextEditingController? emailTextController;
  String? Function(BuildContext, String?)? emailTextControllerValidator;
  String? _emailTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Debe ingresar un correo electronico valido';
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
  String? _passwordTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Debe ingresar una contraseña valida';
    }

    return null;
  }

  // State field(s) for password2 widget.
  FocusNode? password2FocusNode;
  TextEditingController? password2TextController;
  late bool password2Visibility;
  String? Function(BuildContext, String?)? password2TextControllerValidator;
  String? _password2TextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Debe ingresar una contraseña valida';
    }

    return null;
  }

  // Stores action output result for [Validate Form] action in Button widget.
  bool? validado;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  UsuarioRecord? usr;

  @override
  void initState(BuildContext context) {
    nombreTextControllerValidator = _nombreTextControllerValidator;
    apellidoTextControllerValidator = _apellidoTextControllerValidator;
    dniTextControllerValidator = _dniTextControllerValidator;
    domicilioTextControllerValidator = _domicilioTextControllerValidator;
    telefonoTextControllerValidator = _telefonoTextControllerValidator;
    emailTextControllerValidator = _emailTextControllerValidator;
    numerobenficiarioTextControllerValidator =
        _numerobenficiarioTextControllerValidator;
    imagenModel = createModel(context, () => ImagenModel());
    passwordVisibility = false;
    passwordTextControllerValidator = _passwordTextControllerValidator;
    password2Visibility = false;
    password2TextControllerValidator = _password2TextControllerValidator;
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
