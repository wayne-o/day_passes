import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_toggle_icon.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/select_hotel/room_and_guests/room_and_guests_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'details_model.dart';
export 'details_model.dart';

class DetailsWidget extends StatefulWidget {
  const DetailsWidget({
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
  State<DetailsWidget> createState() => _DetailsWidgetState();
}

class _DetailsWidgetState extends State<DetailsWidget> {
  late DetailsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DetailsModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.apiResult8ac = await AmplitudeGroup.analiticsCall.call(
        userId: FFAppState().analyticsUserUID,
        project: FFAppState().analyticsProjectName,
        event: 'Hotel detailed page',
      );
    });
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
                  Icons.arrow_back_rounded,
                  color: FlutterFlowTheme.of(context).gray100,
                  size: 24.0,
                ),
                onPressed: () async {
                  context.safePop();
                },
              ),
              Text(
                'Details',
                style: FlutterFlowTheme.of(context).titleMedium.override(
                      fontFamily: 'Plus Jakarta Sans',
                      fontWeight: FontWeight.bold,
                    ),
              ),
              FlutterFlowIconButton(
                borderColor: FlutterFlowTheme.of(context).info,
                borderRadius: 55.0,
                borderWidth: 1.0,
                buttonSize: 48.0,
                fillColor: FlutterFlowTheme.of(context).info,
                icon: Icon(
                  Icons.more_vert,
                  color: FlutterFlowTheme.of(context).gray100,
                  size: 24.0,
                ),
                onPressed: () {
                  print('IconButton pressed ...');
                },
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
            padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 40.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(12.0),
                          child: Image.network(
                            widget.image!,
                            width: double.infinity,
                            height: 200.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 16.0, 0.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                widget.name!,
                                style: FlutterFlowTheme.of(context)
                                    .headlineSmall
                                    .override(
                                      fontFamily: 'Plus Jakarta Sans',
                                      fontWeight: FontWeight.w600,
                                    ),
                              ),
                              Align(
                                alignment: const AlignmentDirectional(1.0, 0.0),
                                child: ToggleIcon(
                                  onPressed: () async {
                                    setState(() => _model.isValourite =
                                        !_model.isValourite);
                                  },
                                  value: _model.isValourite,
                                  onIcon: Icon(
                                    Icons.favorite,
                                    color: FlutterFlowTheme.of(context).error,
                                    size: 24.0,
                                  ),
                                  offIcon: Icon(
                                    Icons.favorite_border,
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    size: 24.0,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 16.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 4.0, 0.0),
                                child: Icon(
                                  FFIcons.klocationPinDealerzclub2,
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  size: 14.0,
                                ),
                              ),
                              Text(
                                widget.location!,
                                style: FlutterFlowTheme.of(context)
                                    .labelSmall
                                    .override(
                                      fontFamily: 'Plus Jakarta Sans',
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryText,
                                      fontWeight: FontWeight.normal,
                                    ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    8.0, 0.0, 0.0, 0.0),
                                child: Icon(
                                  Icons.star,
                                  color: FlutterFlowTheme.of(context).warning,
                                  size: 16.0,
                                ),
                              ),
                              Align(
                                alignment: const AlignmentDirectional(-1.0, 0.0),
                                child: Text(
                                  '4.9 (104)',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Plus Jakarta Sans',
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        fontSize: 13.0,
                                        fontWeight: FontWeight.normal,
                                      ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).secondary,
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                16.0, 10.0, 16.0, 10.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Expanded(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          const Icon(
                                            Icons.access_time_filled,
                                            color: Color(0xFFFF772B),
                                            size: 18.0,
                                          ),
                                          Text(
                                            'Open At',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyLarge,
                                          ),
                                        ].divide(const SizedBox(width: 4.0)),
                                      ),
                                      Text(
                                        '08:00 AM',
                                        style: FlutterFlowTheme.of(context)
                                            .bodySmall
                                            .override(
                                              fontFamily: 'Plus Jakarta Sans',
                                              fontWeight: FontWeight.bold,
                                            ),
                                      ),
                                    ].divide(const SizedBox(height: 4.0)),
                                  ),
                                ),
                                SizedBox(
                                  height: 35.0,
                                  child: VerticalDivider(
                                    thickness: 1.0,
                                    color: FlutterFlowTheme.of(context).line,
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          FaIcon(
                                            FontAwesomeIcons.fire,
                                            color: FlutterFlowTheme.of(context)
                                                .error,
                                            size: 18.0,
                                          ),
                                          Text(
                                            'Trending',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyLarge,
                                          ),
                                        ].divide(const SizedBox(width: 4.0)),
                                      ),
                                      Text(
                                        '#3 Popular',
                                        style: FlutterFlowTheme.of(context)
                                            .bodySmall
                                            .override(
                                              fontFamily: 'Plus Jakarta Sans',
                                              fontWeight: FontWeight.bold,
                                            ),
                                      ),
                                    ].divide(const SizedBox(height: 4.0)),
                                  ),
                                ),
                                SizedBox(
                                  height: 35.0,
                                  child: VerticalDivider(
                                    thickness: 1.0,
                                    color: FlutterFlowTheme.of(context).line,
                                  ),
                                ),
                                Expanded(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Row(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          const Icon(
                                            FFIcons.kbookmarkDealerzclub2,
                                            color: Color(0xFF0067C6),
                                            size: 18.0,
                                          ),
                                          Text(
                                            'Saved',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyLarge,
                                          ),
                                        ].divide(const SizedBox(width: 4.0)),
                                      ),
                                      Text(
                                        '2.3K Saved',
                                        style: FlutterFlowTheme.of(context)
                                            .bodySmall
                                            .override(
                                              fontFamily: 'Plus Jakarta Sans',
                                              fontWeight: FontWeight.bold,
                                            ),
                                      ),
                                    ].divide(const SizedBox(height: 4.0)),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 24.0, 0.0, 8.0),
                          child: Text(
                            'Overview',
                            style: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Plus Jakarta Sans',
                                  fontWeight: FontWeight.w600,
                                ),
                          ),
                        ),
                        Text(
                          'Nestled in the heart of the Caribbean Sea, the British Virgin Islands (BVI) beckon with pristine white-sand beaches, crystal-clear turquoise waters, and a vibrant marine life that will leave you in awe. ',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Plus Jakarta Sans',
                                    color: FlutterFlowTheme.of(context).gray70,
                                    fontWeight: FontWeight.w500,
                                  ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 24.0, 0.0, 8.0),
                          child: Text(
                            'Location',
                            style: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Plus Jakarta Sans',
                                  fontWeight: FontWeight.w600,
                                ),
                          ),
                        ),
                        Text(
                          'Comprising over 60 idyllic islands and cays, each with its own unique charm, this destination offers an unrivaled haven for travelers seeking the perfect blend of relaxation, adventure, and natural beauty.\nWhether you\'re a beach enthusiast, a water sports aficionado, or a nature lover, the British Virgin Islands have something for everyone. The picture-perfect beaches invite you to unwind, bask in the sun, and take leisurely strolls along the shore. For those seeking adventure, the islands provide exceptional opportunities for sailing, snorkeling, scuba diving, and windsurfing amidst stunning coral reefs and diverse marine life.\nExplore the enchanting Virgin Gorda, known for its iconic Baths—a series of awe-inspiring giant granite boulders forming hidden sea pools and mysterious grottos. Sail to the lively Jost Van Dyke, famed for its lively beach bars and the legendary Soggy Dollar Bar, where the famous Painkiller cocktail was born. Or visit Anegada, a diver\'s paradise with its stunning coral reefs and shipwrecks.\nThe cultural and historical richness of the British Virgin Islands also offers a unique glimpse into the region\'s heritage. Discover centuries-old ruins, visit historic plantations, and interact with the friendly locals to immerse yourself in the authentic island experience.\nAccommodations range from luxury resorts to charming villas and cozy beachfront cottages, ensuring a comfortable stay that suits your preferences. With the serene backdrop of the Caribbean Sea, every moment spent in the British Virgin Islands is bound to be unforgettable, leaving you with memories of a tropical paradise that will beckon you to return time and time again.',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Plus Jakarta Sans',
                                    color: FlutterFlowTheme.of(context).gray70,
                                    fontWeight: FontWeight.w500,
                                  ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 24.0, 0.0, 8.0),
                          child: Text(
                            'Direction',
                            style: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Plus Jakarta Sans',
                                  fontWeight: FontWeight.w600,
                                ),
                          ),
                        ),
                        Text(
                          'Accommodations range from luxury resorts to charming villas and cozy beachfront cottages, ensuring a comfortable stay that suits your preferences. With the serene backdrop of the Caribbean Sea, every moment spent in the British Virgin Islands is bound to be unforgettable, leaving you with memories of a tropical paradise that will beckon you to return time and time again.',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Plus Jakarta Sans',
                                    color: FlutterFlowTheme.of(context).gray70,
                                    fontWeight: FontWeight.w500,
                                  ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          formatNumber(
                            widget.price,
                            formatType: FormatType.custom,
                            currency: '\$',
                            format: '',
                            locale: '',
                          ),
                          style:
                              FlutterFlowTheme.of(context).titleMedium.override(
                                    fontFamily: 'Plus Jakarta Sans',
                                    fontWeight: FontWeight.w600,
                                  ),
                        ),
                        FFButtonWidget(
                          onPressed: () async {
                            showModalBottomSheet(
                              isScrollControlled: true,
                              backgroundColor: Colors.transparent,
                              useSafeArea: true,
                              context: context,
                              builder: (context) {
                                return GestureDetector(
                                  onTap: () =>
                                      _model.unfocusNode.canRequestFocus
                                          ? FocusScope.of(context)
                                              .requestFocus(_model.unfocusNode)
                                          : FocusScope.of(context).unfocus(),
                                  child: Padding(
                                    padding: MediaQuery.viewInsetsOf(context),
                                    child: RoomAndGuestsWidget(
                                      image: widget.image!,
                                      name: widget.name!,
                                      location: widget.location!,
                                      price: widget.price!,
                                    ),
                                  ),
                                );
                              },
                            ).then((value) => safeSetState(() {}));
                          },
                          text: 'Choose a Room',
                          options: FFButtonOptions(
                            width: MediaQuery.sizeOf(context).width * 0.6,
                            height: 56.0,
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                24.0, 0.0, 24.0, 0.0),
                            iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: FlutterFlowTheme.of(context).primary,
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
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
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
