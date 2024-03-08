import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'booking_item_model.dart';
export 'booking_item_model.dart';

class BookingItemWidget extends StatefulWidget {
  const BookingItemWidget({
    super.key,
    required this.date,
    required this.status,
    required this.image,
    required this.name,
    required this.description,
    required this.price,
  });

  final DateTime? date;
  final String? status;
  final String? image;
  final String? name;
  final String? description;
  final double? price;

  @override
  State<BookingItemWidget> createState() => _BookingItemWidgetState();
}

class _BookingItemWidgetState extends State<BookingItemWidget> {
  late BookingItemModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BookingItemModel());
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
        border: Border.all(
          color: FlutterFlowTheme.of(context).secondary,
          width: 2.0,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Text(
                    dateTimeFormat('yMMMd', widget.date),
                    style: FlutterFlowTheme.of(context).labelSmall.override(
                          fontFamily: 'Plus Jakarta Sans',
                          color: FlutterFlowTheme.of(context).secondaryText,
                          fontWeight: FontWeight.normal,
                        ),
                  ),
                ),
                if (widget.status == 'Ongoing')
                  Container(
                    decoration: BoxDecoration(
                      color: const Color(0x3400C566),
                      borderRadius: BorderRadius.circular(34.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(
                          15.0, 12.0, 15.0, 12.0),
                      child: Text(
                        'Ongonig',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Plus Jakarta Sans',
                              color: FlutterFlowTheme.of(context).success,
                              fontSize: 12.0,
                            ),
                      ),
                    ),
                  ),
                if (widget.status == 'Waiting')
                  Container(
                    decoration: BoxDecoration(
                      color: const Color(0x33FACC15),
                      borderRadius: BorderRadius.circular(34.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(
                          15.0, 12.0, 15.0, 12.0),
                      child: Text(
                        'Waiting',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Plus Jakarta Sans',
                              color: FlutterFlowTheme.of(context).warning,
                              fontSize: 12.0,
                            ),
                      ),
                    ),
                  ),
                if (widget.status == 'Completed')
                  Container(
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondary,
                      borderRadius: BorderRadius.circular(34.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsetsDirectional.fromSTEB(
                          15.0, 12.0, 15.0, 12.0),
                      child: Text(
                        'Complited',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Plus Jakarta Sans',
                              color: FlutterFlowTheme.of(context).secondaryText,
                              fontSize: 12.0,
                            ),
                      ),
                    ),
                  ),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12.0),
                  child: Image.network(
                    widget.image!,
                    width: 64.0,
                    height: 64.0,
                    fit: BoxFit.cover,
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 0.0, 0.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.name!,
                          style:
                              FlutterFlowTheme.of(context).titleMedium.override(
                                    fontFamily: 'Plus Jakarta Sans',
                                    fontWeight: FontWeight.w800,
                                  ),
                        ),
                        Text(
                          widget.description!,
                          style: FlutterFlowTheme.of(context)
                              .labelSmall
                              .override(
                                fontFamily: 'Plus Jakarta Sans',
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                fontWeight: FontWeight.normal,
                              ),
                        ),
                      ].divide(const SizedBox(height: 12.0)),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Total Price',
                        style: FlutterFlowTheme.of(context).labelSmall.override(
                              fontFamily: 'Plus Jakarta Sans',
                              color: FlutterFlowTheme.of(context).secondaryText,
                              fontWeight: FontWeight.normal,
                            ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
                        child: Text(
                          formatNumber(
                            widget.price,
                            formatType: FormatType.custom,
                            currency: '\$',
                            format: '####.##',
                            locale: '',
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodySmall.override(
                                    fontFamily: 'Plus Jakarta Sans',
                                    color: FlutterFlowTheme.of(context).primary,
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                      ),
                    ],
                  ),
                ),
                FFButtonWidget(
                  onPressed: () async {
                    context.pushNamed(
                      'Ticket',
                      queryParameters: {
                        'name': serializeParam(
                          widget.name,
                          ParamType.String,
                        ),
                        'location': serializeParam(
                          widget.description,
                          ParamType.String,
                        ),
                        'price': serializeParam(
                          widget.price,
                          ParamType.double,
                        ),
                        'image': serializeParam(
                          widget.image,
                          ParamType.String,
                        ),
                        'status': serializeParam(
                          widget.status,
                          ParamType.String,
                        ),
                      }.withoutNulls,
                    );
                  },
                  text: 'See Ticket',
                  options: FFButtonOptions(
                    height: 40.0,
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                    iconPadding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: FlutterFlowTheme.of(context).primary,
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Plus Jakarta Sans',
                          color: FlutterFlowTheme.of(context).white,
                          fontWeight: FontWeight.w600,
                        ),
                    elevation: 0.0,
                    borderSide: const BorderSide(
                      color: Colors.transparent,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(24.0),
                  ),
                ),
              ],
            ),
          ].divide(const SizedBox(height: 15.0)),
        ),
      ),
    );
  }
}
