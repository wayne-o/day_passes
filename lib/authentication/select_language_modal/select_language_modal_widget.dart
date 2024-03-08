import '/authentication/language/language_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'select_language_modal_model.dart';
export 'select_language_modal_model.dart';

class SelectLanguageModalWidget extends StatefulWidget {
  const SelectLanguageModalWidget({super.key});

  @override
  State<SelectLanguageModalWidget> createState() =>
      _SelectLanguageModalWidgetState();
}

class _SelectLanguageModalWidgetState extends State<SelectLanguageModalWidget> {
  late SelectLanguageModalModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SelectLanguageModalModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

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
                  Icons.close,
                  color: FlutterFlowTheme.of(context).gray100,
                  size: 24.0,
                ),
                onPressed: () async {
                  context.safePop();
                },
              ),
              Align(
                alignment: const AlignmentDirectional(0.0, -1.0),
                child: Text(
                  'Select a Language',
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).headlineSmall.override(
                        fontFamily: 'Plus Jakarta Sans',
                        fontWeight: FontWeight.bold,
                      ),
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
            child: Builder(
              builder: (context) {
                final language = FFAppState().languages.toList();
                return SingleChildScrollView(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: List.generate(language.length, (languageIndex) {
                      final languageItem = language[languageIndex];
                      return InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          setState(() {
                            _model.selectedLanguage = languageItem;
                          });
                          setState(() {
                            FFAppState().selectedLanguage = languageItem;
                          });
                        },
                        child: LanguageWidget(
                          key: Key(
                              'Keyrdv_${languageIndex}_of_${language.length}'),
                          isSelected: languageItem == _model.selectedLanguage,
                          language: languageItem,
                        ),
                      );
                    }).divide(const SizedBox(height: 16.0)),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
