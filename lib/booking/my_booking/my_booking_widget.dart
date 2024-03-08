import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_button_tabbar.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/home/booking_item/booking_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'my_booking_model.dart';
export 'my_booking_model.dart';

class MyBookingWidget extends StatefulWidget {
  const MyBookingWidget({super.key});

  @override
  State<MyBookingWidget> createState() => _MyBookingWidgetState();
}

class _MyBookingWidgetState extends State<MyBookingWidget>
    with TickerProviderStateMixin {
  late MyBookingModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MyBookingModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.apiResult8ac = await AmplitudeGroup.analiticsCall.call(
        userId: FFAppState().analyticsUserUID,
        project: FFAppState().analyticsProjectName,
        event: 'Booking page',
      );
    });

    _model.tabBarController = TabController(
      vsync: this,
      length: 2,
      initialIndex: 0,
    )..addListener(() => setState(() {}));
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
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
          automaticallyImplyLeading: false,
          title: Text(
            'My Booking',
            style: FlutterFlowTheme.of(context).titleMedium.override(
                  fontFamily: 'Plus Jakarta Sans',
                  fontWeight: FontWeight.w600,
                ),
          ),
          actions: const [],
          centerTitle: true,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            children: [
              Align(
                alignment: const Alignment(0.0, 0),
                child: FlutterFlowButtonTabBar(
                  useToggleButtonStyle: true,
                  labelStyle: FlutterFlowTheme.of(context).titleSmall,
                  unselectedLabelStyle: const TextStyle(),
                  labelColor: FlutterFlowTheme.of(context).secondaryBackground,
                  unselectedLabelColor: FlutterFlowTheme.of(context).gray60,
                  backgroundColor: FlutterFlowTheme.of(context).primary,
                  unselectedBackgroundColor:
                      FlutterFlowTheme.of(context).secondary,
                  borderColor: FlutterFlowTheme.of(context).primary,
                  unselectedBorderColor: FlutterFlowTheme.of(context).alternate,
                  borderWidth: 0.0,
                  borderRadius: 32.0,
                  elevation: 0.0,
                  buttonMargin:
                      const EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                  padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                  tabs: const [
                    Tab(
                      text: 'Booked',
                    ),
                    Tab(
                      text: 'History',
                    ),
                  ],
                  controller: _model.tabBarController,
                  onTap: (i) async {
                    [() async {}, () async {}][i]();
                  },
                ),
              ),
              Expanded(
                child: TabBarView(
                  controller: _model.tabBarController,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                      child: Builder(
                        builder: (context) {
                          final booking = FFAppState().bookings.toList();
                          return SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children:
                                  List.generate(booking.length, (bookingIndex) {
                                final bookingItem = booking[bookingIndex];
                                return InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    context.pushNamed(
                                      'Ticket',
                                      queryParameters: {
                                        'name': serializeParam(
                                          bookingItem.name,
                                          ParamType.String,
                                        ),
                                        'location': serializeParam(
                                          bookingItem.description,
                                          ParamType.String,
                                        ),
                                        'price': serializeParam(
                                          bookingItem.price,
                                          ParamType.double,
                                        ),
                                        'image': serializeParam(
                                          bookingItem.image,
                                          ParamType.String,
                                        ),
                                        'status': serializeParam(
                                          bookingItem.status,
                                          ParamType.String,
                                        ),
                                      }.withoutNulls,
                                    );
                                  },
                                  child: BookingItemWidget(
                                    key: Key(
                                        'Keyy2r_${bookingIndex}_of_${booking.length}'),
                                    status: bookingItem.status,
                                    image: bookingItem.image,
                                    name: bookingItem.name,
                                    description: bookingItem.description,
                                    price: bookingItem.price,
                                    date: bookingItem.date!,
                                  ),
                                );
                              })
                                      .divide(const SizedBox(height: 16.0))
                                      .addToStart(const SizedBox(height: 24.0))
                                      .addToEnd(const SizedBox(height: 24.0)),
                            ),
                          );
                        },
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                      child: Builder(
                        builder: (context) {
                          final historyBooking =
                              FFAppState().historyBookings.toList();
                          return SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: List.generate(historyBooking.length,
                                      (historyBookingIndex) {
                                final historyBookingItem =
                                    historyBooking[historyBookingIndex];
                                return InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    context.pushNamed(
                                      'Ticket',
                                      queryParameters: {
                                        'name': serializeParam(
                                          historyBookingItem.name,
                                          ParamType.String,
                                        ),
                                        'location': serializeParam(
                                          historyBookingItem.description,
                                          ParamType.String,
                                        ),
                                        'price': serializeParam(
                                          historyBookingItem.price,
                                          ParamType.double,
                                        ),
                                        'image': serializeParam(
                                          historyBookingItem.image,
                                          ParamType.String,
                                        ),
                                        'status': serializeParam(
                                          historyBookingItem.status,
                                          ParamType.String,
                                        ),
                                      }.withoutNulls,
                                    );
                                  },
                                  child: BookingItemWidget(
                                    key: Key(
                                        'Keyutt_${historyBookingIndex}_of_${historyBooking.length}'),
                                    status: historyBookingItem.status,
                                    image: historyBookingItem.image,
                                    name: historyBookingItem.name,
                                    description: historyBookingItem.description,
                                    price: historyBookingItem.price,
                                    date: historyBookingItem.date!,
                                  ),
                                );
                              })
                                  .divide(const SizedBox(height: 16.0))
                                  .addToStart(const SizedBox(height: 24.0))
                                  .addToEnd(const SizedBox(height: 24.0)),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
