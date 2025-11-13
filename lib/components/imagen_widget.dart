import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'imagen_model.dart';
export 'imagen_model.dart';

class ImagenWidget extends StatefulWidget {
  const ImagenWidget({
    super.key,
    required this.foto,
  });

  final String? foto;

  @override
  State<ImagenWidget> createState() => _ImagenWidgetState();
}

class _ImagenWidgetState extends State<ImagenWidget> {
  late ImagenModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ImagenModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () async {
        await Navigator.push(
          context,
          PageTransition(
            type: PageTransitionType.fade,
            child: FlutterFlowExpandedImageView(
              image: Image.network(
                functions.stringToImagePath(widget.foto)!,
                fit: BoxFit.contain,
                errorBuilder: (context, error, stackTrace) => Image.asset(
                  'assets/images/error_image.png',
                  fit: BoxFit.contain,
                ),
              ),
              allowRotation: false,
              tag: functions.stringToImagePath(widget.foto)!,
              useHeroAnimation: true,
            ),
          ),
        );
      },
      child: Hero(
        tag: functions.stringToImagePath(widget.foto)!,
        transitionOnUserGestures: true,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(12.0),
          child: Image.network(
            functions.stringToImagePath(widget.foto)!,
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.scaleDown,
            errorBuilder: (context, error, stackTrace) => Image.asset(
              'assets/images/error_image.png',
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.scaleDown,
            ),
          ),
        ),
      ),
    );
  }
}
