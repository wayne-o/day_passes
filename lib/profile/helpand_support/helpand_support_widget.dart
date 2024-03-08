import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'helpand_support_model.dart';
export 'helpand_support_model.dart';

class HelpandSupportWidget extends StatefulWidget {
  const HelpandSupportWidget({super.key});

  @override
  State<HelpandSupportWidget> createState() => _HelpandSupportWidgetState();
}

class _HelpandSupportWidgetState extends State<HelpandSupportWidget> {
  late HelpandSupportModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HelpandSupportModel());

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();

    _model.expandableController1 = ExpandableController(initialExpanded: false);
    _model.expandableController2 = ExpandableController(initialExpanded: false);
    _model.expandableController3 = ExpandableController(initialExpanded: false);
    _model.expandableController4 = ExpandableController(initialExpanded: false);
    _model.expandableController5 = ExpandableController(initialExpanded: false);
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
                'Help and Support',
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
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 32.0),
                  child: TextFormField(
                    controller: _model.textController,
                    focusNode: _model.textFieldFocusNode,
                    obscureText: false,
                    decoration: InputDecoration(
                      hintText: 'Search...',
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
                      contentPadding: const EdgeInsets.all(20.0),
                      prefixIcon: Icon(
                        FFIcons.ksearchNormal1,
                        color: FlutterFlowTheme.of(context).gray60,
                        size: 24.0,
                      ),
                      suffixIcon: Icon(
                        FFIcons.kslidersHorizontalAltDealerzclub1,
                        color: FlutterFlowTheme.of(context).gray60,
                        size: 24.0,
                      ),
                    ),
                    style: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Plus Jakarta Sans',
                          fontWeight: FontWeight.w600,
                        ),
                    validator:
                        _model.textControllerValidator.asValidator(context),
                  ),
                ),
                Container(
                  width: double.infinity,
                  color: Colors.white,
                  child: ExpandableNotifier(
                    controller: _model.expandableController1,
                    child: ExpandablePanel(
                      header: Text(
                        'Travel Care Center',
                        style: FlutterFlowTheme.of(context).titleSmall.override(
                              fontFamily: 'Plus Jakarta Sans',
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                      collapsed: Container(),
                      expanded: Text(
                        'Traveling the world? We\'ve got the hotline to help. Reach out anytime for expert assistance during your travels.',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Plus Jakarta Sans',
                              color: const Color(0xFF6C6C6C),
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                      theme: const ExpandableThemeData(
                        tapHeaderToExpand: true,
                        tapBodyToExpand: false,
                        tapBodyToCollapse: false,
                        headerAlignment: ExpandablePanelHeaderAlignment.center,
                        hasIcon: true,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  color: Colors.white,
                  child: ExpandableNotifier(
                    controller: _model.expandableController2,
                    child: ExpandablePanel(
                      header: Text(
                        'Wanderlust Aid',
                        style: FlutterFlowTheme.of(context).titleSmall.override(
                              fontFamily: 'Plus Jakarta Sans',
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                      collapsed: Container(),
                      expanded: Text(
                        'Traveling the world? We\'ve got the hotline to help. Reach out anytime for expert assistance during your travels.',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Plus Jakarta Sans',
                              color: const Color(0xFF6C6C6C),
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                      theme: const ExpandableThemeData(
                        tapHeaderToExpand: true,
                        tapBodyToExpand: false,
                        tapBodyToCollapse: false,
                        headerAlignment: ExpandablePanelHeaderAlignment.center,
                        hasIcon: true,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  color: Colors.white,
                  child: ExpandableNotifier(
                    controller: _model.expandableController3,
                    child: ExpandablePanel(
                      header: Text(
                        'Roaming Rescuer',
                        style: FlutterFlowTheme.of(context).titleSmall.override(
                              fontFamily: 'Plus Jakarta Sans',
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                      collapsed: Container(),
                      expanded: Text(
                        'Traveling the world? We\'ve got the hotline to help. Reach out anytime for expert assistance during your travels.',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Plus Jakarta Sans',
                              color: const Color(0xFF6C6C6C),
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                      theme: const ExpandableThemeData(
                        tapHeaderToExpand: true,
                        tapBodyToExpand: false,
                        tapBodyToCollapse: false,
                        headerAlignment: ExpandablePanelHeaderAlignment.center,
                        hasIcon: true,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  color: Colors.white,
                  child: ExpandableNotifier(
                    controller: _model.expandableController4,
                    child: ExpandablePanel(
                      header: Text(
                        'Globetrotter\'s Helpline',
                        style: FlutterFlowTheme.of(context).titleSmall.override(
                              fontFamily: 'Plus Jakarta Sans',
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                      collapsed: Container(),
                      expanded: Text(
                        'Traveling the world? We\'ve got the hotline to help. Reach out anytime for expert assistance during your travels.',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Plus Jakarta Sans',
                              color: const Color(0xFF6C6C6C),
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                      theme: const ExpandableThemeData(
                        tapHeaderToExpand: true,
                        tapBodyToExpand: false,
                        tapBodyToCollapse: false,
                        headerAlignment: ExpandablePanelHeaderAlignment.center,
                        hasIcon: true,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    width: double.infinity,
                    color: Colors.white,
                    child: ExpandableNotifier(
                      controller: _model.expandableController5,
                      child: ExpandablePanel(
                        header: Text(
                          'Explore Easy Support',
                          style:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Plus Jakarta Sans',
                                    fontWeight: FontWeight.w600,
                                  ),
                        ),
                        collapsed: Container(),
                        expanded: Text(
                          'Traveling the world? We\'ve got the hotline to help. Reach out anytime for expert assistance during your travels.',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Plus Jakarta Sans',
                                    color: const Color(0xFF6C6C6C),
                                    fontWeight: FontWeight.w500,
                                  ),
                        ),
                        theme: const ExpandableThemeData(
                          tapHeaderToExpand: true,
                          tapBodyToExpand: false,
                          tapBodyToCollapse: false,
                          headerAlignment:
                              ExpandablePanelHeaderAlignment.center,
                          hasIcon: true,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
