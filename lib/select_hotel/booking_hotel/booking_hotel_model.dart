import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/home/accomodation_item/accomodation_item_widget.dart';
import 'booking_hotel_widget.dart' show BookingHotelWidget;
import 'package:flutter/material.dart';

class BookingHotelModel extends FlutterFlowModel<BookingHotelWidget> {
  ///  Local state fields for this page.

  bool isValourite = false;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (Analitics)] action in BookingHotel widget.
  ApiCallResponse? apiResult8ac;
  // Model for accomodationItem component.
  late AccomodationItemModel accomodationItemModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    accomodationItemModel = createModel(context, () => AccomodationItemModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    accomodationItemModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
