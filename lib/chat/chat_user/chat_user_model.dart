import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/home/accomodation_item/accomodation_item_widget.dart';
import 'chat_user_widget.dart' show ChatUserWidget;
import 'package:flutter/material.dart';

class ChatUserModel extends FlutterFlowModel<ChatUserWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (Analitics)] action in ChatUser widget.
  ApiCallResponse? apiResult8ac;
  // Model for accomodationItem component.
  late AccomodationItemModel accomodationItemModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    accomodationItemModel = createModel(context, () => AccomodationItemModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    accomodationItemModel.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
