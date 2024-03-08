import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/select_hotel/coupon_select/coupon_select_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'select_dates_model.dart';
export 'select_dates_model.dart';

class SelectDatesWidget extends StatefulWidget {
  const SelectDatesWidget({
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
  State<SelectDatesWidget> createState() => _SelectDatesWidgetState();
}

class _SelectDatesWidgetState extends State<SelectDatesWidget> {
  late SelectDatesModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SelectDatesModel());
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
                    'Choose Dates',
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
              Text(
                'From',
                style: FlutterFlowTheme.of(context).labelLarge.override(
                      fontFamily: 'Plus Jakarta Sans',
                      fontWeight: FontWeight.w500,
                    ),
              ),
              InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  await showModalBottomSheet<bool>(
                      context: context,
                      builder: (context) {
                        return SizedBox(
                          height: MediaQuery.of(context).size.height / 3,
                          width: MediaQuery.of(context).size.width,
                          child: CupertinoDatePicker(
                            mode: CupertinoDatePickerMode.date,
                            minimumDate:
                                (getCurrentTimestamp ?? DateTime(1900)),
                            initialDateTime: getCurrentTimestamp,
                            maximumDate: DateTime(2050),
                            use24hFormat: false,
                            onDateTimeChanged: (newDateTime) =>
                                safeSetState(() {
                              _model.datePicked1 = newDateTime;
                            }),
                          ),
                        );
                      });
                },
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          _model.datePicked1 != null
                              ? dateTimeFormat('yMMMMd', _model.datePicked1)
                              : 'Choose date',
                          style:
                              FlutterFlowTheme.of(context).labelMedium.override(
                                    fontFamily: 'Plus Jakarta Sans',
                                    color: _model.datePicked1 != null
                                        ? FlutterFlowTheme.of(context).gray100
                                        : FlutterFlowTheme.of(context).gray60,
                                  ),
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: FlutterFlowTheme.of(context).secondaryText,
                          size: 20.0,
                        ),
                      ],
                    ),
                    Divider(
                      thickness: 1.0,
                      color: FlutterFlowTheme.of(context).line,
                    ),
                  ].divide(const SizedBox(height: 10.0)),
                ),
              ),
              Text(
                'To',
                style: FlutterFlowTheme.of(context).labelLarge.override(
                      fontFamily: 'Plus Jakarta Sans',
                      fontWeight: FontWeight.w500,
                    ),
              ),
              InkWell(
                splashColor: Colors.transparent,
                focusColor: Colors.transparent,
                hoverColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () async {
                  await showModalBottomSheet<bool>(
                      context: context,
                      builder: (context) {
                        return SizedBox(
                          height: MediaQuery.of(context).size.height / 3,
                          width: MediaQuery.of(context).size.width,
                          child: CupertinoDatePicker(
                            mode: CupertinoDatePickerMode.date,
                            minimumDate:
                                (getCurrentTimestamp ?? DateTime(1900)),
                            initialDateTime: getCurrentTimestamp,
                            maximumDate: DateTime(2050),
                            use24hFormat: false,
                            onDateTimeChanged: (newDateTime) =>
                                safeSetState(() {
                              _model.datePicked2 = newDateTime;
                            }),
                          ),
                        );
                      });
                },
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          _model.datePicked2 != null
                              ? dateTimeFormat('yMMMMd', _model.datePicked2)
                              : 'Choose date',
                          style:
                              FlutterFlowTheme.of(context).labelMedium.override(
                                    fontFamily: 'Plus Jakarta Sans',
                                    color: _model.datePicked2 != null
                                        ? FlutterFlowTheme.of(context).gray100
                                        : FlutterFlowTheme.of(context).gray60,
                                  ),
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: FlutterFlowTheme.of(context).secondaryText,
                          size: 20.0,
                        ),
                      ],
                    ),
                    Divider(
                      thickness: 1.0,
                      color: FlutterFlowTheme.of(context).line,
                    ),
                  ].divide(const SizedBox(height: 10.0)),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 12.0),
                child: FFButtonWidget(
                  onPressed: () async {
                    Navigator.pop(context);
                    showModalBottomSheet(
                      isScrollControlled: true,
                      backgroundColor: Colors.transparent,
                      useSafeArea: true,
                      context: context,
                      builder: (context) {
                        return Padding(
                          padding: MediaQuery.viewInsetsOf(context),
                          child: CouponSelectWidget(
                            image: widget.image!,
                            name: widget.name!,
                            location: widget.location!,
                            price: widget.price!,
                          ),
                        );
                      },
                    ).then((value) => safeSetState(() {}));
                  },
                  text: 'Save',
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
