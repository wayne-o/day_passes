import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_toggle_icon.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'payment_method_model.dart';
export 'payment_method_model.dart';

class PaymentMethodWidget extends StatefulWidget {
  const PaymentMethodWidget({super.key});

  @override
  State<PaymentMethodWidget> createState() => _PaymentMethodWidgetState();
}

class _PaymentMethodWidgetState extends State<PaymentMethodWidget> {
  late PaymentMethodModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PaymentMethodModel());
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
                    'Payment Method',
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
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      setState(() {
                        _model.selectedIndex = true;
                      });
                    },
                    child: Material(
                      color: Colors.transparent,
                      elevation: 3.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(16.0),
                          border: Border.all(
                            color: FlutterFlowTheme.of(context).line,
                            width: 1.0,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image.asset(
                                  'assets/images/mastercard.png',
                                  width: 40.0,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Expanded(
                                child: Text(
                                  'Master Card',
                                  style:
                                      FlutterFlowTheme.of(context).bodyMedium,
                                ),
                              ),
                              ToggleIcon(
                                onPressed: () async {
                                  setState(() => _model.selectedIndex =
                                      !_model.selectedIndex);
                                },
                                value: _model.selectedIndex,
                                onIcon: Icon(
                                  Icons.check_box,
                                  color: FlutterFlowTheme.of(context).primary,
                                  size: 25.0,
                                ),
                                offIcon: Icon(
                                  Icons.check_box_outline_blank,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  size: 25.0,
                                ),
                              ),
                            ].divide(const SizedBox(width: 15.0)),
                          ),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      setState(() {
                        _model.selectedIndex = false;
                      });
                    },
                    child: Material(
                      color: Colors.transparent,
                      elevation: 3.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(16.0),
                          border: Border.all(
                            color: FlutterFlowTheme.of(context).line,
                            width: 1.0,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(8.0),
                                child: Image.asset(
                                  'assets/images/Visa.png',
                                  width: 40.0,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Expanded(
                                child: Text(
                                  'Visa',
                                  style:
                                      FlutterFlowTheme.of(context).bodyMedium,
                                ),
                              ),
                              ToggleIcon(
                                onPressed: () async {
                                  setState(() => _model.selectedIndex =
                                      !_model.selectedIndex);
                                },
                                value: !_model.selectedIndex,
                                onIcon: Icon(
                                  Icons.check_box,
                                  color: FlutterFlowTheme.of(context).primary,
                                  size: 25.0,
                                ),
                                offIcon: Icon(
                                  Icons.check_box_outline_blank,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  size: 25.0,
                                ),
                              ),
                            ].divide(const SizedBox(width: 15.0)),
                          ),
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      context.pushNamed('AddNewCard');
                    },
                    child: Material(
                      color: Colors.transparent,
                      elevation: 3.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.circular(16.0),
                          border: Border.all(
                            color: FlutterFlowTheme.of(context).line,
                            width: 1.0,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Icon(
                                Icons.add_circle,
                                color: FlutterFlowTheme.of(context).primary,
                                size: 24.0,
                              ),
                              Expanded(
                                child: Text(
                                  'Add Debit Card',
                                  style:
                                      FlutterFlowTheme.of(context).bodyMedium,
                                ),
                              ),
                            ].divide(const SizedBox(width: 15.0)),
                          ),
                        ),
                      ),
                    ),
                  ),
                ].divide(const SizedBox(height: 16.0)),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 12.0),
                child: FFButtonWidget(
                  onPressed: () async {
                    Navigator.pop(context);

                    context.pushNamed('PaymentSuccessfull');
                  },
                  text: 'Confirm and Pay',
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
