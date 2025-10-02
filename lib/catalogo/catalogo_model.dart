import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'catalogo_widget.dart' show CatalogoWidget;
import 'package:flutter/material.dart';

class CatalogoModel extends FlutterFlowModel<CatalogoWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  bool isDataUploading_uploadDataWvp = false;
  FFUploadedFile uploadedLocalFile_uploadDataWvp =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl_uploadDataWvp = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
