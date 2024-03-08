import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'language_model.dart';
export 'language_model.dart';

class LanguageWidget extends StatefulWidget {
  const LanguageWidget({
    super.key,
    bool? isSelected,
    required this.language,
  }) : isSelected = isSelected ?? false;

  final bool isSelected;
  final String? language;

  @override
  State<LanguageWidget> createState() => _LanguageWidgetState();
}

class _LanguageWidgetState extends State<LanguageWidget> {
  late LanguageModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LanguageModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondary,
        borderRadius: BorderRadius.circular(60.0),
        border: Border.all(
          color: widget.isSelected
              ? FlutterFlowTheme.of(context).primary
              : FlutterFlowTheme.of(context).gray30,
          width: 1.0,
        ),
      ),
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(16.0, 12.0, 16.0, 12.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            if (!widget.isSelected)
              Icon(
                Icons.circle_outlined,
                color: FlutterFlowTheme.of(context).secondaryText,
                size: 24.0,
              ),
            if (widget.isSelected)
              Icon(
                Icons.check_circle,
                color: FlutterFlowTheme.of(context).primary,
                size: 24.0,
              ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 0.0, 0.0),
              child: Text(
                widget.language!,
                style: FlutterFlowTheme.of(context).titleSmall.override(
                      fontFamily: 'Plus Jakarta Sans',
                      fontWeight: FontWeight.w600,
                    ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
