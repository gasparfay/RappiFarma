import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'resumen_compra_widget.dart' show ResumenCompraWidget;
import 'package:flutter/material.dart';

class ResumenCompraModel extends FlutterFlowModel<ResumenCompraWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  List<OfertaRecord>? ofertasUid;
  // Stores action output result for [Firestore Query - Query a collection] action in Button widget.
  OrdenRecord? ordenUid;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
