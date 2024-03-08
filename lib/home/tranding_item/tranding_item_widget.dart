import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_toggle_icon.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'tranding_item_model.dart';
export 'tranding_item_model.dart';

class TrandingItemWidget extends StatefulWidget {
  const TrandingItemWidget({
    super.key,
    required this.image,
    required this.location,
  });

  final String? image;
  final String? location;

  @override
  State<TrandingItemWidget> createState() => _TrandingItemWidgetState();
}

class _TrandingItemWidgetState extends State<TrandingItemWidget> {
  late TrandingItemModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TrandingItemModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 335.0,
      height: 150.0,
      decoration: const BoxDecoration(),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(16.0),
            child: Image.network(
              widget.image!,
              width: 335.0,
              height: 150.0,
              fit: BoxFit.cover,
            ),
          ),
          Align(
            alignment: const AlignmentDirectional(1.0, -1.0),
            child: ToggleIcon(
              onPressed: () async {
                setState(() => _model.isFavourite = !_model.isFavourite);
              },
              value: _model.isFavourite,
              onIcon: Icon(
                Icons.favorite,
                color: FlutterFlowTheme.of(context).error,
                size: 18.0,
              ),
              offIcon: Icon(
                Icons.favorite_border,
                color: FlutterFlowTheme.of(context).secondaryBackground,
                size: 18.0,
              ),
            ),
          ),
          Align(
            alignment: const AlignmentDirectional(0.0, 1.0),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Icon(
                    FFIcons.klocation,
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    size: 24.0,
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(4.0, 0.0, 0.0, 0.0),
                    child: Text(
                      widget.location!,
                      style: FlutterFlowTheme.of(context).labelSmall.override(
                            fontFamily: 'Plus Jakarta Sans',
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                          ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
