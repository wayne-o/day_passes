import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'coupon_item_model.dart';
export 'coupon_item_model.dart';

class CouponItemWidget extends StatefulWidget {
  const CouponItemWidget({
    super.key,
    bool? isSelected,
    required this.type,
    required this.expiration,
  }) : isSelected = isSelected ?? false;

  final bool isSelected;
  final String? type;
  final String? expiration;

  @override
  State<CouponItemWidget> createState() => _CouponItemWidgetState();
}

class _CouponItemWidgetState extends State<CouponItemWidget> {
  late CouponItemModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CouponItemModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      elevation: 3.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackground,
          borderRadius: BorderRadius.circular(16.0),
          border: Border.all(
            color: widget.isSelected
                ? FlutterFlowTheme.of(context).primary
                : FlutterFlowTheme.of(context).secondaryBackground,
            width: 1.0,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Icon(
                FFIcons.kpercentCircleDealerzclub,
                color: FlutterFlowTheme.of(context).primary,
                size: 24.0,
              ),
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.type!,
                      style: FlutterFlowTheme.of(context).bodyMedium,
                    ),
                    Text(
                      widget.expiration!,
                      style: FlutterFlowTheme.of(context).bodySmall.override(
                            fontFamily: 'Plus Jakarta Sans',
                            color: FlutterFlowTheme.of(context).gray60,
                            fontWeight: FontWeight.normal,
                          ),
                    ),
                  ].divide(const SizedBox(height: 4.0)),
                ),
              ),
              Icon(
                Icons.check_sharp,
                color: FlutterFlowTheme.of(context).primary,
                size: 24.0,
              ),
            ].divide(const SizedBox(width: 15.0)),
          ),
        ),
      ),
    );
  }
}
