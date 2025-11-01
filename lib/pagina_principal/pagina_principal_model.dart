import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'pagina_principal_widget.dart' show PaginaPrincipalWidget;
import 'package:flutter/material.dart';

class PaginaPrincipalModel extends FlutterFlowModel<PaginaPrincipalWidget> {
  ///  State fields for stateful widgets in this page.

  bool isDataUploading_recetaSubida = false;
  FFUploadedFile uploadedLocalFile_recetaSubida =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // Stores action output result for [Backend Call - API (UploadToCloudinary)] action in Button widget.
  ApiCallResponse? urlFotoReceta;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
