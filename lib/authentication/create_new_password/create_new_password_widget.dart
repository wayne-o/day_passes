import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'create_new_password_model.dart';
export 'create_new_password_model.dart';

class CreateNewPasswordWidget extends StatefulWidget {
  const CreateNewPasswordWidget({super.key});

  @override
  State<CreateNewPasswordWidget> createState() =>
      _CreateNewPasswordWidgetState();
}

class _CreateNewPasswordWidgetState extends State<CreateNewPasswordWidget> {
  late CreateNewPasswordModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CreateNewPasswordModel());

    _model.textController1 ??= TextEditingController();
    _model.textFieldFocusNode1 ??= FocusNode();

    _model.textController2 ??= TextEditingController();
    _model.textFieldFocusNode2 ??= FocusNode();
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
            padding: const EdgeInsets.all(24.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: const AlignmentDirectional(0.0, -1.0),
                    child: Text(
                      'Create a\nNew Password',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).headlineLarge,
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(0.0, -1.0),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 32.0),
                      child: Text(
                        'Enter your new password',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Plus Jakarta Sans',
                              color: FlutterFlowTheme.of(context).gray70,
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
                    child: Text(
                      'New Password',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Plus Jakarta Sans',
                            color: FlutterFlowTheme.of(context).gray70,
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                  ),
                  TextFormField(
                    controller: _model.textController1,
                    focusNode: _model.textFieldFocusNode1,
                    obscureText: !_model.passwordVisibility1,
                    decoration: InputDecoration(
                      hintText: 'Enter new password',
                      hintStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                fontFamily: 'Plus Jakarta Sans',
                                color: FlutterFlowTheme.of(context).gray60,
                                fontWeight: FontWeight.w600,
                              ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).secondary,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(24.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).primary,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(24.0),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).error,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(24.0),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).error,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(24.0),
                      ),
                      filled: true,
                      fillColor: FlutterFlowTheme.of(context).secondary,
                      suffixIcon: InkWell(
                        onTap: () => setState(
                          () => _model.passwordVisibility1 =
                              !_model.passwordVisibility1,
                        ),
                        focusNode: FocusNode(skipTraversal: true),
                        child: Icon(
                          _model.passwordVisibility1
                              ? Icons.visibility_outlined
                              : Icons.visibility_off_outlined,
                          color: FlutterFlowTheme.of(context).gray60,
                          size: 24.0,
                        ),
                      ),
                    ),
                    style: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Plus Jakarta Sans',
                          fontWeight: FontWeight.w600,
                        ),
                    cursorColor: FlutterFlowTheme.of(context).gray60,
                    validator:
                        _model.textController1Validator.asValidator(context),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 8.0),
                    child: Text(
                      'Confirm Password',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Plus Jakarta Sans',
                            color: FlutterFlowTheme.of(context).gray70,
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                  ),
                  TextFormField(
                    controller: _model.textController2,
                    focusNode: _model.textFieldFocusNode2,
                    obscureText: !_model.passwordVisibility2,
                    decoration: InputDecoration(
                      hintText: 'Confirm new password',
                      hintStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                fontFamily: 'Plus Jakarta Sans',
                                color: FlutterFlowTheme.of(context).gray60,
                                fontWeight: FontWeight.w600,
                              ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).secondary,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(24.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).primary,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(24.0),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).error,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(24.0),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: FlutterFlowTheme.of(context).error,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.circular(24.0),
                      ),
                      filled: true,
                      fillColor: FlutterFlowTheme.of(context).secondary,
                      suffixIcon: InkWell(
                        onTap: () => setState(
                          () => _model.passwordVisibility2 =
                              !_model.passwordVisibility2,
                        ),
                        focusNode: FocusNode(skipTraversal: true),
                        child: Icon(
                          _model.passwordVisibility2
                              ? Icons.visibility_outlined
                              : Icons.visibility_off_outlined,
                          color: FlutterFlowTheme.of(context).gray60,
                          size: 24.0,
                        ),
                      ),
                    ),
                    style: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Plus Jakarta Sans',
                          fontWeight: FontWeight.w600,
                        ),
                    cursorColor: FlutterFlowTheme.of(context).gray60,
                    validator:
                        _model.textController2Validator.asValidator(context),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 40.0, 0.0, 0.0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        context.pushNamed('HomePage');
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
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
