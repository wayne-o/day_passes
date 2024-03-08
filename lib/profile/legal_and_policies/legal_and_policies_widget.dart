import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'legal_and_policies_model.dart';
export 'legal_and_policies_model.dart';

class LegalAndPoliciesWidget extends StatefulWidget {
  const LegalAndPoliciesWidget({super.key});

  @override
  State<LegalAndPoliciesWidget> createState() => _LegalAndPoliciesWidgetState();
}

class _LegalAndPoliciesWidgetState extends State<LegalAndPoliciesWidget> {
  late LegalAndPoliciesModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LegalAndPoliciesModel());
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
              Text(
                'Legal and Policies',
                style: FlutterFlowTheme.of(context).titleMedium.override(
                      fontFamily: 'Plus Jakarta Sans',
                      fontWeight: FontWeight.bold,
                    ),
              ),
              Container(
                width: 48.0,
                height: 48.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  shape: BoxShape.circle,
                ),
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
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Terms',
                    style: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Plus Jakarta Sans',
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                    child: Text(
                      'Welcome to our application (\"App\"). These terms and conditions govern your use of the App. By accessing or using the App, you agree to comply with these terms, our Privacy Policy, and any additional guidelines provided within the App. Your use of the App is subject to applicable laws and regulations.\n\nYour use of the App is at your own risk. The App is provided on an \"as is\" and \"as available\" basis. We reserve the right to modify or terminate the App or any of its features at any time without prior notice. We are not responsible for any consequences, damages, or losses that may result.',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Plus Jakarta Sans',
                            color: FlutterFlowTheme.of(context).gray80,
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
                    child: Text(
                      'Changes to the Service and/or Terms:',
                      style: FlutterFlowTheme.of(context).titleSmall.override(
                            fontFamily: 'Plus Jakarta Sans',
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                    child: Text(
                      'Welcome to our application (\"App\"). These terms and conditions govern your use of the App. By accessing or using the App, you agree to comply with these terms, our Privacy Policy, and any additional guidelines provided within the App. Your use of the App is subject to applicable laws and regulations.\n\nYour use of the App is at your own risk. The App is provided on an \"as is\" and \"as available\" basis. We reserve the right to modify or terminate the App or any of its features at any time without prior notice. We are not responsible for any consequences, damages, or losses that may result.',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Plus Jakarta Sans',
                            color: FlutterFlowTheme.of(context).gray80,
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
                    child: Text(
                      'About',
                      style: FlutterFlowTheme.of(context).titleSmall.override(
                            fontFamily: 'Plus Jakarta Sans',
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                    child: Text(
                      'Welcome to our application (\"App\"). These terms and conditions govern your use of the App. By accessing or using the App, you agree to comply with these terms, our Privacy Policy, and any additional guidelines provided within the App. Your use of the App is subject to applicable laws and regulations.\n\nYour use of the App is at your own risk. The App is provided on an \"as is\" and \"as available\" basis. We reserve the right to modify or terminate the App or any of its features at any time without prior notice. We are not responsible for any consequences, damages, or losses that may result.',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Plus Jakarta Sans',
                            color: FlutterFlowTheme.of(context).gray80,
                            fontWeight: FontWeight.w500,
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
