import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'star_rating_model.dart';
export 'star_rating_model.dart';

class StarRatingWidget extends StatefulWidget {
  const StarRatingWidget({
    super.key,
    bool? isSelected,
    required this.num,
  }) : isSelected = isSelected ?? false;

  final bool isSelected;
  final int? num;

  @override
  State<StarRatingWidget> createState() => _StarRatingWidgetState();
}

class _StarRatingWidgetState extends State<StarRatingWidget> {
  late StarRatingModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => StarRatingModel());
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
              ? FlutterFlowTheme.of(context).warning
              : FlutterFlowTheme.of(context).line,
          width: 1.0,
        ),
      ),
      child: Padding(
        padding: const EdgeInsetsDirectional.fromSTEB(20.0, 8.0, 20.0, 8.0),
        child: Builder(
          builder: (context) {
            final num = functions.rating(widget.num!).toList();
            return Row(
              mainAxisSize: MainAxisSize.min,
              children: List.generate(num.length, (numIndex) {
                final numItem = num[numIndex];
                return Icon(
                  Icons.star,
                  color: FlutterFlowTheme.of(context).warning,
                  size: 24.0,
                );
              }),
            );
          },
        ),
      ),
    );
  }
}
