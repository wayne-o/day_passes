import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_toggle_icon.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'trip_item_model.dart';
export 'trip_item_model.dart';

class TripItemWidget extends StatefulWidget {
  const TripItemWidget({
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
  State<TripItemWidget> createState() => _TripItemWidgetState();
}

class _TripItemWidgetState extends State<TripItemWidget> {
  late TripItemModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TripItemModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 258.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12.0),
                child: Image.network(
                  widget.image!,
                  width: double.infinity,
                  height: 190.0,
                  fit: BoxFit.cover,
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(1.0, 0.0),
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
                    color: FlutterFlowTheme.of(context).secondaryText,
                    size: 18.0,
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
            child: Text(
              widget.continent!,
              style: FlutterFlowTheme.of(context).labelSmall.override(
                    fontFamily: 'Plus Jakarta Sans',
                    color: FlutterFlowTheme.of(context).secondaryText,
                    fontWeight: FontWeight.normal,
                  ),
            ),
          ),
          Align(
            alignment: const AlignmentDirectional(-1.0, 0.0),
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 4.0),
              child: Text(
                widget.name!,
                style: FlutterFlowTheme.of(context).titleMedium.override(
                      fontFamily: 'Plus Jakarta Sans',
                      fontWeight: FontWeight.w800,
                    ),
              ),
            ),
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
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
              ),
              Icon(
                Icons.star,
                color: FlutterFlowTheme.of(context).warning,
                size: 16.0,
              ),
              Align(
                alignment: const AlignmentDirectional(-1.0, 0.0),
                child: Text(
                  '4.5 (104)',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Plus Jakarta Sans',
                        color: FlutterFlowTheme.of(context).secondaryText,
                        fontSize: 13.0,
                        fontWeight: FontWeight.normal,
                      ),
                ),
              ),
            ].divide(const SizedBox(width: 8.0)),
          ),
        ],
      ),
    );
  }
}
