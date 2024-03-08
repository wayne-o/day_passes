import '/flutter_flow/flutter_flow_count_controller.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/select_hotel/select_dates/select_dates_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'room_and_guests_model.dart';
export 'room_and_guests_model.dart';

class RoomAndGuestsWidget extends StatefulWidget {
  const RoomAndGuestsWidget({
    super.key,
    required this.image,
    required this.name,
    required this.location,
    required this.price,
  });

  final String? image;
  final String? name;
  final String? location;
  final double? price;

  @override
  State<RoomAndGuestsWidget> createState() => _RoomAndGuestsWidgetState();
}

class _RoomAndGuestsWidgetState extends State<RoomAndGuestsWidget> {
  late RoomAndGuestsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RoomAndGuestsModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(0.0),
          bottomRight: Radius.circular(0.0),
          topLeft: Radius.circular(16.0),
          topRight: Radius.circular(16.0),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
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
                      Navigator.pop(context);
                    },
                  ),
                  Text(
                    'Room and Guests',
                    style: FlutterFlowTheme.of(context).titleMedium.override(
                          fontFamily: 'Plus Jakarta Sans',
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  Text(
                    'Page ',
                    style: FlutterFlowTheme.of(context).headlineMedium.override(
                          fontFamily: 'Plus Jakarta Sans',
                          color: Colors.white,
                          fontSize: 22.0,
                        ),
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 2,
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Room',
                          style:
                              FlutterFlowTheme.of(context).labelLarge.override(
                                    fontFamily: 'Plus Jakarta Sans',
                                    fontWeight: FontWeight.w500,
                                  ),
                        ),
                        Text(
                          'Minimum contains 4 people',
                          style:
                              FlutterFlowTheme.of(context).labelSmall.override(
                                    fontFamily: 'Plus Jakarta Sans',
                                    color: const Color(0xFFA7AEC1),
                                  ),
                        ),
                      ].divide(const SizedBox(height: 6.0)),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      width: 60.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        borderRadius: BorderRadius.circular(8.0),
                        shape: BoxShape.rectangle,
                        border: Border.all(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          width: 2.0,
                        ),
                      ),
                      child: FlutterFlowCountController(
                        decrementIconBuilder: (enabled) => FaIcon(
                          FontAwesomeIcons.minus,
                          color: enabled
                              ? FlutterFlowTheme.of(context).secondaryText
                              : FlutterFlowTheme.of(context).alternate,
                          size: 16.0,
                        ),
                        incrementIconBuilder: (enabled) => FaIcon(
                          FontAwesomeIcons.plus,
                          color: enabled
                              ? FlutterFlowTheme.of(context).primary
                              : FlutterFlowTheme.of(context).alternate,
                          size: 16.0,
                        ),
                        countBuilder: (count) => Text(
                          count.toString(),
                          style: FlutterFlowTheme.of(context).labelMedium,
                        ),
                        count: _model.countControllerValue1 ??= 0,
                        updateCount: (count) => setState(
                            () => _model.countControllerValue1 = count),
                        stepSize: 1,
                        minimum: 0,
                        maximum: 10,
                      ),
                    ),
                  ),
                ],
              ),
              Divider(
                thickness: 1.0,
                color: FlutterFlowTheme.of(context).line,
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 2,
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Adults',
                          style:
                              FlutterFlowTheme.of(context).labelLarge.override(
                                    fontFamily: 'Plus Jakarta Sans',
                                    fontWeight: FontWeight.w500,
                                  ),
                        ),
                        Text(
                          'Age 15+',
                          style:
                              FlutterFlowTheme.of(context).labelSmall.override(
                                    fontFamily: 'Plus Jakarta Sans',
                                    color: const Color(0xFFA7AEC1),
                                  ),
                        ),
                      ].divide(const SizedBox(height: 6.0)),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      width: 60.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        borderRadius: BorderRadius.circular(8.0),
                        shape: BoxShape.rectangle,
                        border: Border.all(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          width: 2.0,
                        ),
                      ),
                      child: FlutterFlowCountController(
                        decrementIconBuilder: (enabled) => FaIcon(
                          FontAwesomeIcons.minus,
                          color: enabled
                              ? FlutterFlowTheme.of(context).secondaryText
                              : FlutterFlowTheme.of(context).alternate,
                          size: 16.0,
                        ),
                        incrementIconBuilder: (enabled) => FaIcon(
                          FontAwesomeIcons.plus,
                          color: enabled
                              ? FlutterFlowTheme.of(context).primary
                              : FlutterFlowTheme.of(context).alternate,
                          size: 16.0,
                        ),
                        countBuilder: (count) => Text(
                          count.toString(),
                          style: FlutterFlowTheme.of(context).labelMedium,
                        ),
                        count: _model.countControllerValue2 ??= 0,
                        updateCount: (count) => setState(
                            () => _model.countControllerValue2 = count),
                        stepSize: 1,
                        minimum: 0,
                        maximum: 10,
                      ),
                    ),
                  ),
                ],
              ),
              Divider(
                thickness: 1.0,
                color: FlutterFlowTheme.of(context).line,
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 2,
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Childern',
                          style:
                              FlutterFlowTheme.of(context).labelLarge.override(
                                    fontFamily: 'Plus Jakarta Sans',
                                    fontWeight: FontWeight.w500,
                                  ),
                        ),
                        Text(
                          'Age 2 - 12',
                          style:
                              FlutterFlowTheme.of(context).labelSmall.override(
                                    fontFamily: 'Plus Jakarta Sans',
                                    color: const Color(0xFFA7AEC1),
                                  ),
                        ),
                      ].divide(const SizedBox(height: 6.0)),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      width: 60.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        borderRadius: BorderRadius.circular(8.0),
                        shape: BoxShape.rectangle,
                        border: Border.all(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          width: 2.0,
                        ),
                      ),
                      child: FlutterFlowCountController(
                        decrementIconBuilder: (enabled) => FaIcon(
                          FontAwesomeIcons.minus,
                          color: enabled
                              ? FlutterFlowTheme.of(context).secondaryText
                              : FlutterFlowTheme.of(context).alternate,
                          size: 16.0,
                        ),
                        incrementIconBuilder: (enabled) => FaIcon(
                          FontAwesomeIcons.plus,
                          color: enabled
                              ? FlutterFlowTheme.of(context).primary
                              : FlutterFlowTheme.of(context).alternate,
                          size: 16.0,
                        ),
                        countBuilder: (count) => Text(
                          count.toString(),
                          style: FlutterFlowTheme.of(context).labelMedium,
                        ),
                        count: _model.countControllerValue3 ??= 0,
                        updateCount: (count) => setState(
                            () => _model.countControllerValue3 = count),
                        stepSize: 1,
                        minimum: 0,
                        maximum: 10,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 12.0),
                child: FFButtonWidget(
                  onPressed: () async {
                    Navigator.pop(context);
                    showModalBottomSheet(
                      isScrollControlled: true,
                      backgroundColor: Colors.transparent,
                      useSafeArea: true,
                      context: context,
                      builder: (context) {
                        return Padding(
                          padding: MediaQuery.viewInsetsOf(context),
                          child: SelectDatesWidget(
                            image: widget.image!,
                            name: widget.name!,
                            location: widget.location!,
                            price: widget.price!,
                          ),
                        );
                      },
                    ).then((value) => safeSetState(() {}));
                  },
                  text: 'Save',
                  options: FFButtonOptions(
                    width: double.infinity,
                    height: 48.0,
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                    iconPadding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: FlutterFlowTheme.of(context).primary,
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Plus Jakarta Sans',
                          color: FlutterFlowTheme.of(context).white,
                          fontWeight: FontWeight.w600,
                        ),
                    elevation: 0.0,
                    borderSide: const BorderSide(
                      color: Colors.transparent,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(24.0),
                  ),
                ),
              ),
            ].divide(const SizedBox(height: 10.0)),
          ),
        ),
      ),
    );
  }
}
