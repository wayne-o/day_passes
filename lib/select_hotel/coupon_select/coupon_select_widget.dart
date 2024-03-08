import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/select_hotel/coupon_item/coupon_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'coupon_select_model.dart';
export 'coupon_select_model.dart';

class CouponSelectWidget extends StatefulWidget {
  const CouponSelectWidget({
    super.key,
    required this.image,
    required this.name,
    required this.location,
    required this.price,
  });

  final String? image;
  final String? name;
  final String? location;
  final double? price;

  @override
  State<CouponSelectWidget> createState() => _CouponSelectWidgetState();
}

class _CouponSelectWidgetState extends State<CouponSelectWidget> {
  late CouponSelectModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CouponSelectModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(0.0),
          bottomRight: Radius.circular(0.0),
          topLeft: Radius.circular(16.0),
          topRight: Radius.circular(16.0),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FlutterFlowIconButton(
                    borderColor: FlutterFlowTheme.of(context).info,
                    borderRadius: 55.0,
                    borderWidth: 1.0,
                    buttonSize: 48.0,
                    fillColor: FlutterFlowTheme.of(context).info,
                    icon: Icon(
                      Icons.close,
                      color: FlutterFlowTheme.of(context).gray100,
                      size: 24.0,
                    ),
                    onPressed: () async {
                      Navigator.pop(context);
                    },
                  ),
                  Text(
                    'My Cupon',
                    style: FlutterFlowTheme.of(context).titleMedium.override(
                          fontFamily: 'Plus Jakarta Sans',
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  Text(
                    'Page ',
                    style: FlutterFlowTheme.of(context).headlineMedium.override(
                          fontFamily: 'Plus Jakarta Sans',
                          color: Colors.white,
                          fontSize: 22.0,
                        ),
                  ),
                ],
              ),
              Builder(
                builder: (context) {
                  final coupon = FFAppState().coupons.toList();
                  return Column(
                    mainAxisSize: MainAxisSize.max,
                    children: List.generate(coupon.length, (couponIndex) {
                      final couponItem = coupon[couponIndex];
                      return InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          setState(() {
                            _model.selectedIndex = couponIndex;
                          });
                        },
                        child: CouponItemWidget(
                          key: Key('Keylag_${couponIndex}_of_${coupon.length}'),
                          isSelected: couponIndex == _model.selectedIndex,
                          type: couponItem.type,
                          expiration: couponItem.expiration,
                        ),
                      );
                    }).divide(const SizedBox(height: 16.0)),
                  );
                },
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 12.0),
                child: FFButtonWidget(
                  onPressed: () async {
                    Navigator.pop(context);

                    context.pushNamed(
                      'BookingHotel',
                      queryParameters: {
                        'image': serializeParam(
                          widget.image,
                          ParamType.String,
                        ),
                        'name': serializeParam(
                          widget.name,
                          ParamType.String,
                        ),
                        'location': serializeParam(
                          widget.location,
                          ParamType.String,
                        ),
                        'price': serializeParam(
                          widget.price,
                          ParamType.double,
                        ),
                      }.withoutNulls,
                    );
                  },
                  text: 'Use Coupon',
                  options: FFButtonOptions(
                    width: double.infinity,
                    height: 48.0,
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
              ),
            ].divide(const SizedBox(height: 10.0)),
          ),
        ),
      ),
    );
  }
}
