import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/home/trip_item/trip_item_widget.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  Local state fields for this page.

  String selectedCategory = 'All';

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (Analitics)] action in HomePage widget.
  ApiCallResponse? apiResult8ac;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Models for tripItem dynamic component.
  late FlutterFlowDynamicModels<TripItemModel> tripItemModels;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    tripItemModels = FlutterFlowDynamicModels(() => TripItemModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    tripItemModels.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
