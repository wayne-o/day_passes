import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'explore_page_widget.dart' show ExplorePageWidget;
import 'package:flutter/material.dart';

class ExplorePageModel extends FlutterFlowModel<ExplorePageWidget> {
  ///  Local state fields for this page.

  String selectedCategory = 'All';

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (Analitics)] action in ExplorePage widget.
  ApiCallResponse? apiResult8ac;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
