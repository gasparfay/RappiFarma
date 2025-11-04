import '/flutter_flow/flutter_flow_util.dart';
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
    return ClipRRect(
      borderRadius: BorderRadius.circular(8.0),
      child: Image.network(
        widget.foto!,
        width: double.infinity,
        height: double.infinity,
        fit: BoxFit.cover,
      ),
    );
  }
}
