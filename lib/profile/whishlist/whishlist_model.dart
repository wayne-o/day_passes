import '/flutter_flow/flutter_flow_util.dart';
import 'whishlist_widget.dart' show WhishlistWidget;
import 'package:flutter/material.dart';

class WhishlistModel extends FlutterFlowModel<WhishlistWidget> {
  ///  Local state fields for this page.

  String selectedCategory = 'All';

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
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
