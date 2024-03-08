import '/flutter_flow/flutter_flow_util.dart';
import 'select_language_modal_widget.dart' show SelectLanguageModalWidget;
import 'package:flutter/material.dart';

class SelectLanguageModalModel
    extends FlutterFlowModel<SelectLanguageModalWidget> {
  ///  Local state fields for this page.

  String selectedLanguage = 'English';

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
