import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'accomodation_item_model.dart';
export 'accomodation_item_model.dart';

class AccomodationItemWidget extends StatefulWidget {
  const AccomodationItemWidget({
    super.key,
    required this.image,
    required this.continent,
    required this.name,
    required this.price,
  });

  final String? image;
  final String? continent;
  final String? name;
  final double? price;

  @override
  State<AccomodationItemWidget> createState() => _AccomodationItemWidgetState();
}

class _AccomodationItemWidgetState extends State<AccomodationItemWidget> {
  late AccomodationItemModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AccomodationItemModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110.0,
      constraints: const BoxConstraints(
        maxHeight: 150.0,
      ),
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12.0),
            child: Image.network(
              widget.image!,
              width: 100.0,
              height: 100.0,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 0.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FFButtonWidget(
                  onPressed: () {
                    print('Button pressed ...');
                  },
                  text: 'Villa',
                  options: FFButtonOptions(
                    width: 63.0,
                    padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    iconPadding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Plus Jakarta Sans',
                          color: FlutterFlowTheme.of(context).primary,
                        ),
                    elevation: 0.0,
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).primary,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(24.0),
                  ),
                ),
                Expanded(
                  child: Text(
                    widget.name!,
                    style: FlutterFlowTheme.of(context).titleMedium.override(
                          fontFamily: 'Plus Jakarta Sans',
                          fontWeight: FontWeight.w800,
                        ),
                  ),
                ),
                Text(
                  widget.continent!,
                  style: FlutterFlowTheme.of(context).labelSmall.override(
                        fontFamily: 'Plus Jakarta Sans',
                        color: FlutterFlowTheme.of(context).secondaryText,
                        fontWeight: FontWeight.normal,
                      ),
                ),
                Expanded(
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        formatNumber(
                          widget.price,
                          formatType: FormatType.custom,
                          currency: '\$',
                          format: '',
                          locale: '',
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Plus Jakarta Sans',
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                      Icon(
                        Icons.star,
                        color: FlutterFlowTheme.of(context).warning,
                        size: 16.0,
                      ),
                      Align(
                        alignment: const AlignmentDirectional(-1.0, 0.0),
                        child: Text(
                          '4.9 (104)',
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Plus Jakarta Sans',
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                fontSize: 13.0,
                                fontWeight: FontWeight.normal,
                              ),
                        ),
                      ),
                    ].divide(const SizedBox(width: 8.0)),
                  ),
                ),
              ].divide(const SizedBox(height: 4.0)),
            ),
          ),
        ],
      ),
    );
  }
}
