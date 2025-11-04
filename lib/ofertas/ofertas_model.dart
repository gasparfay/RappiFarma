import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'ofertas_widget.dart' show OfertasWidget;
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:flutter/material.dart';

class OfertasModel extends FlutterFlowModel<OfertasWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for Timer widget.
  final timerInitialTimeMs = 0;
  int timerMilliseconds = 0;
  String timerValue = StopWatchTimer.getDisplayTime(
    0,
    hours: false,
    milliSecond: false,
  );
  FlutterFlowTimerController timerController =
      FlutterFlowTimerController(StopWatchTimer(mode: StopWatchMode.countDown));

  // Stores action output result for [Firestore Query - Query a collection] action in Timer widget.
  List<OfertaRecord>? ofertasUid;
  // Stores action output result for [Firestore Query - Query a collection] action in Timer widget.
  OrdenRecord? ordenUid;
  // Stores action output result for [Firestore Query - Query a collection] action in IconButton widget.
  List<OfertaRecord>? ofertasUidCopy;
  // Stores action output result for [Firestore Query - Query a collection] action in IconButton widget.
  OrdenRecord? ordenUidCopy;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    timerController.dispose();
  }
}
