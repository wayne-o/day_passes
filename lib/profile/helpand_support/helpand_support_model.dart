import '/flutter_flow/flutter_flow_util.dart';
import 'helpand_support_widget.dart' show HelpandSupportWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class HelpandSupportModel extends FlutterFlowModel<HelpandSupportWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // State field(s) for Expandable widget.
  late ExpandableController expandableController1;

  // State field(s) for Expandable widget.
  late ExpandableController expandableController2;

  // State field(s) for Expandable widget.
  late ExpandableController expandableController3;

  // State field(s) for Expandable widget.
  late ExpandableController expandableController4;

  // State field(s) for Expandable widget.
  late ExpandableController expandableController5;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    expandableController1.dispose();
    expandableController2.dispose();
    expandableController3.dispose();
    expandableController4.dispose();
    expandableController5.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
