import '/authentication/success_log_in/success_log_in_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:flutter/material.dart';
import 'otp_model.dart';
export 'otp_model.dart';

class OtpWidget extends StatefulWidget {
  const OtpWidget({super.key});

  @override
  State<OtpWidget> createState() => _OtpWidgetState();
}

class _OtpWidgetState extends State<OtpWidget> {
  late OtpModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OtpModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).info,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).info,
          automaticallyImplyLeading: false,
          title: Row(
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
                  Icons.arrow_back_rounded,
                  color: FlutterFlowTheme.of(context).gray100,
                  size: 24.0,
                ),
                onPressed: () async {
                  context.safePop();
                },
              ),
            ],
          ),
          actions: const [],
          centerTitle: false,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: const AlignmentDirectional(0.0, -1.0),
                  child: Text(
                    'Enter OTP',
                    style: FlutterFlowTheme.of(context).headlineLarge,
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 40.0),
                  child: RichText(
                    textScaler: MediaQuery.of(context).textScaler,
                    text: TextSpan(
                      children: [
                        const TextSpan(
                          text:
                              'We have just sent you 4 digit code via your email ',
                          style: TextStyle(
                            color: Color(0xFF6C6C6C),
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        TextSpan(
                          text: 'example@gmail.com',
                          style: TextStyle(
                            color: FlutterFlowTheme.of(context).gray100,
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      ],
                      style: FlutterFlowTheme.of(context).titleSmall.override(
                            fontFamily: 'Plus Jakarta Sans',
                            color: const Color(0xFF6C6C6C),
                            fontSize: 14.0,
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                PinCodeTextField(
                  autoDisposeControllers: false,
                  appContext: context,
                  length: 4,
                  textStyle: FlutterFlowTheme.of(context).headlineLarge,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  enableActiveFill: false,
                  autoFocus: true,
                  enablePinAutofill: true,
                  errorTextSpace: 16.0,
                  showCursor: true,
                  cursorColor: FlutterFlowTheme.of(context).primary,
                  obscureText: false,
                  keyboardType: TextInputType.number,
                  pinTheme: PinTheme(
                    fieldHeight: 56.0,
                    fieldWidth: 56.0,
                    borderWidth: 1.0,
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(24.0),
                      bottomRight: Radius.circular(24.0),
                      topLeft: Radius.circular(24.0),
                      topRight: Radius.circular(24.0),
                    ),
                    shape: PinCodeFieldShape.box,
                    activeColor: FlutterFlowTheme.of(context).primary,
                    inactiveColor: FlutterFlowTheme.of(context).alternate,
                    selectedColor: FlutterFlowTheme.of(context).primary,
                    activeFillColor: FlutterFlowTheme.of(context).primary,
                    inactiveFillColor: FlutterFlowTheme.of(context).alternate,
                    selectedFillColor: FlutterFlowTheme.of(context).primary,
                  ),
                  controller: _model.pinCodeController,
                  onChanged: (_) {},
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  validator:
                      _model.pinCodeControllerValidator.asValidator(context),
                ),
                Builder(
                  builder: (context) => Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 40.0, 0.0, 24.0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        showDialog(
                          context: context,
                          builder: (dialogContext) {
                            return Dialog(
                              elevation: 0,
                              insetPadding: EdgeInsets.zero,
                              backgroundColor: Colors.transparent,
                              alignment: const AlignmentDirectional(0.0, 0.0)
                                  .resolve(Directionality.of(context)),
                              child: GestureDetector(
                                onTap: () => _model.unfocusNode.canRequestFocus
                                    ? FocusScope.of(context)
                                        .requestFocus(_model.unfocusNode)
                                    : FocusScope.of(context).unfocus(),
                                child: const SuccessLogInWidget(),
                              ),
                            );
                          },
                        ).then((value) => setState(() {}));
                      },
                      text: 'Continue',
                      options: FFButtonOptions(
                        width: MediaQuery.sizeOf(context).width * 1.0,
                        height: 56.0,
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            24.0, 0.0, 24.0, 0.0),
                        iconPadding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: FlutterFlowTheme.of(context).primary,
                        textStyle:
                            FlutterFlowTheme.of(context).titleSmall.override(
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
                ),
                Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RichText(
                      textScaler: MediaQuery.of(context).textScaler,
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'Didn’t receive code?',
                            style: TextStyle(
                              color: FlutterFlowTheme.of(context).gray100,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          TextSpan(
                            text: ' Resend Code',
                            style: TextStyle(
                              color: FlutterFlowTheme.of(context).primary,
                              fontWeight: FontWeight.w600,
                            ),
                          )
                        ],
                        style: FlutterFlowTheme.of(context).titleSmall.override(
                              fontFamily: 'Plus Jakarta Sans',
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                    ),
                  ],
                ),
              ].addToStart(const SizedBox(height: 24.0)),
            ),
          ),
        ),
      ),
    );
  }
}
