import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'popular_filter_item_model.dart';
export 'popular_filter_item_model.dart';

class PopularFilterItemWidget extends StatefulWidget {
  const PopularFilterItemWidget({
    super.key,
    bool? isSelected,
    required this.text,
  }) : isSelected = isSelected ?? false;

  final bool isSelected;
  final String? text;

  @override
  State<PopularFilterItemWidget> createState() =>
      _PopularFilterItemWidgetState();
}

class _PopularFilterItemWidgetState extends State<PopularFilterItemWidget> {
  late PopularFilterItemModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PopularFilterItemModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: BorderRadius.circular(24.0),
        border: Border.all(
          color: widget.isSelected
              ? FlutterFlowTheme.of(context).primary
              : FlutterFlowTheme.of(context).line,
          width: 1.0,
        ),
      ),
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(20.0, 8.0, 20.0, 8.0),
        child: Text(
          widget.text!,
          textAlign: TextAlign.center,
          style: FlutterFlowTheme.of(context).titleSmall.override(
                fontFamily: 'Plus Jakarta Sans',
                color: widget.isSelected
                    ? FlutterFlowTheme.of(context).primary
                    : FlutterFlowTheme.of(context).gray100,
                fontWeight: FontWeight.bold,
              ),
        ),
      ),
    );
  }
}
