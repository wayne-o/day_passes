import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/home/accomodation_item/accomodation_item_widget.dart';
import '/home/hotel_item/hotel_item_widget.dart';
import '/home/trip_item/trip_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'home_page_model.dart';
export 'home_page_model.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({super.key});

  @override
  State<HomePageWidget> createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  late HomePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.apiResult8ac = await AmplitudeGroup.analiticsCall.call(
        userId: FFAppState().analyticsUserUID,
        project: FFAppState().analyticsProjectName,
        event: 'Home page',
      );
    });

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();
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
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).primary,
                ),
                child: Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(24.0, 40.0, 24.0, 24.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: const Color(0x1AFFFFFF),
                              borderRadius: BorderRadius.circular(100.0),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Container(
                                    width: 30.0,
                                    height: 30.0,
                                    clipBehavior: Clip.antiAlias,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                    ),
                                    child: Image.network(
                                      'https://picsum.photos/seed/732/600',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        8.0, 0.0, 0.0, 0.0),
                                    child: Text(
                                      'Hi, Alexander',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Plus Jakarta Sans',
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          FlutterFlowIconButton(
                            borderColor: const Color(0x19FFFFFF),
                            borderRadius: 55.0,
                            borderWidth: 1.0,
                            buttonSize: 40.0,
                            fillColor: const Color(0x1AFFFFFF),
                            icon: Icon(
                              FFIcons.knotificationBing,
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              size: 24.0,
                            ),
                            onPressed: () async {
                              context.pushNamed('NotificationsLive');
                            },
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            0.0, 24.0, 0.0, 16.0),
                        child: RichText(
                          textScaler: MediaQuery.of(context).textScaler,
                          text: TextSpan(
                            children: [
                              const TextSpan(
                                text: 'Let\'s make ',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              TextSpan(
                                text: 'your dream  ',
                                style: TextStyle(
                                  color: FlutterFlowTheme.of(context).tertiary,
                                ),
                              ),
                              const TextSpan(
                                text: 'holiday come true',
                                style: TextStyle(),
                              )
                            ],
                            style: FlutterFlowTheme.of(context)
                                .displaySmall
                                .override(
                                  fontFamily: 'Plus Jakarta Sans',
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  fontSize: 28.0,
                                ),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: TextFormField(
                              controller: _model.textController,
                              focusNode: _model.textFieldFocusNode,
                              obscureText: false,
                              decoration: InputDecoration(
                                hintText: 'Search...',
                                hintStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: 'Plus Jakarta Sans',
                                      color:
                                          FlutterFlowTheme.of(context).gray60,
                                      fontWeight: FontWeight.w600,
                                    ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color:
                                        FlutterFlowTheme.of(context).secondary,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(24.0),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).primary,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(24.0),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(24.0),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(24.0),
                                ),
                                filled: true,
                                fillColor:
                                    FlutterFlowTheme.of(context).secondary,
                                contentPadding: const EdgeInsets.all(20.0),
                                prefixIcon: Icon(
                                  FFIcons.ksearchNormal1,
                                  color: FlutterFlowTheme.of(context).gray60,
                                  size: 24.0,
                                ),
                                suffixIcon: Icon(
                                  FFIcons.kslidersHorizontalAltDealerzclub1,
                                  color: FlutterFlowTheme.of(context).gray60,
                                  size: 24.0,
                                ),
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: 'Plus Jakarta Sans',
                                    fontWeight: FontWeight.w600,
                                  ),
                              validator: _model.textControllerValidator
                                  .asValidator(context),
                            ),
                          ),
                          FFButtonWidget(
                            onPressed: () async {
                              context.pushNamed('Search');
                            },
                            text: 'Go',
                            options: FFButtonOptions(
                              height: 60.0,
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  24.0, 0.0, 24.0, 0.0),
                              iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                  0.0, 0.0, 0.0, 0.0),
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                              textStyle:
                                  FlutterFlowTheme.of(context).titleSmall,
                              elevation: 0.0,
                              borderSide: BorderSide(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                width: 1.0,
                              ),
                              borderRadius: BorderRadius.circular(55.0),
                            ),
                          ),
                        ].divide(const SizedBox(width: 12.0)),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(24.0, 16.0, 24.0, 12.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Popular Today 🔥',
                      style: FlutterFlowTheme.of(context).titleSmall.override(
                            fontFamily: 'Plus Jakarta Sans',
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                    Text(
                      'See Alll',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Plus Jakarta Sans',
                            color: FlutterFlowTheme.of(context).primary,
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          setState(() {
                            _model.selectedCategory = 'All';
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: _model.selectedCategory == 'All'
                                ? FlutterFlowTheme.of(context).primary
                                : FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                            borderRadius: BorderRadius.circular(60.0),
                            border: Border.all(
                              color: _model.selectedCategory == 'All'
                                  ? FlutterFlowTheme.of(context).primary
                                  : FlutterFlowTheme.of(context).gray60,
                              width: 1.0,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                24.0, 10.0, 24.0, 10.0),
                            child: Text(
                              'All',
                              style: FlutterFlowTheme.of(context)
                                  .bodySmall
                                  .override(
                                    fontFamily: 'Plus Jakarta Sans',
                                    color: _model.selectedCategory == 'All'
                                        ? FlutterFlowTheme.of(context)
                                            .secondaryBackground
                                        : FlutterFlowTheme.of(context).gray60,
                                  ),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          setState(() {
                            _model.selectedCategory = 'Beach';
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: _model.selectedCategory == 'Beach'
                                ? FlutterFlowTheme.of(context).primary
                                : FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                            borderRadius: BorderRadius.circular(60.0),
                            border: Border.all(
                              color: _model.selectedCategory == 'Beach'
                                  ? FlutterFlowTheme.of(context).primary
                                  : FlutterFlowTheme.of(context).gray60,
                              width: 1.0,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                24.0, 10.0, 24.0, 10.0),
                            child: Text(
                              'Beach',
                              style: FlutterFlowTheme.of(context)
                                  .bodySmall
                                  .override(
                                    fontFamily: 'Plus Jakarta Sans',
                                    color: _model.selectedCategory == 'Beach'
                                        ? FlutterFlowTheme.of(context)
                                            .secondaryBackground
                                        : FlutterFlowTheme.of(context).gray60,
                                  ),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          setState(() {
                            _model.selectedCategory = 'Mountain';
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: _model.selectedCategory == 'Mountain'
                                ? FlutterFlowTheme.of(context).primary
                                : FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                            borderRadius: BorderRadius.circular(60.0),
                            border: Border.all(
                              color: _model.selectedCategory == 'Mountain'
                                  ? FlutterFlowTheme.of(context).primary
                                  : FlutterFlowTheme.of(context).gray60,
                              width: 1.0,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                24.0, 10.0, 24.0, 10.0),
                            child: Text(
                              'Mountain',
                              style: FlutterFlowTheme.of(context)
                                  .bodySmall
                                  .override(
                                    fontFamily: 'Plus Jakarta Sans',
                                    color: _model.selectedCategory == 'Mountain'
                                        ? FlutterFlowTheme.of(context)
                                            .secondaryBackground
                                        : FlutterFlowTheme.of(context).gray60,
                                  ),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          setState(() {
                            _model.selectedCategory = 'Snow';
                          });
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            color: _model.selectedCategory == 'Snow'
                                ? FlutterFlowTheme.of(context).primary
                                : FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                            borderRadius: BorderRadius.circular(60.0),
                            border: Border.all(
                              color: _model.selectedCategory == 'Snow'
                                  ? FlutterFlowTheme.of(context).primary
                                  : FlutterFlowTheme.of(context).gray60,
                              width: 1.0,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                24.0, 10.0, 24.0, 10.0),
                            child: Text(
                              'Snow',
                              style: FlutterFlowTheme.of(context)
                                  .bodySmall
                                  .override(
                                    fontFamily: 'Plus Jakarta Sans',
                                    color: _model.selectedCategory == 'Snow'
                                        ? FlutterFlowTheme.of(context)
                                            .secondaryBackground
                                        : FlutterFlowTheme.of(context).gray60,
                                  ),
                            ),
                          ),
                        ),
                      ),
                    ]
                        .divide(const SizedBox(width: 12.0))
                        .addToStart(const SizedBox(width: 24.0))
                        .addToEnd(const SizedBox(width: 24.0)),
                  ),
                ),
              ),
              Builder(
                builder: (context) {
                  final trip = FFAppState().trips.toList();
                  return SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: List.generate(trip.length, (tripIndex) {
                        final tripItem = trip[tripIndex];
                        return InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            context.pushNamed(
                              'Details',
                              queryParameters: {
                                'image': serializeParam(
                                  tripItem.image,
                                  ParamType.String,
                                ),
                                'name': serializeParam(
                                  tripItem.name,
                                  ParamType.String,
                                ),
                                'location': serializeParam(
                                  tripItem.continent,
                                  ParamType.String,
                                ),
                                'price': serializeParam(
                                  tripItem.price,
                                  ParamType.double,
                                ),
                              }.withoutNulls,
                            );
                          },
                          child: TripItemWidget(
                            key: Key('Keyt76_${tripIndex}_of_${trip.length}'),
                            image: tripItem.image,
                            continent: tripItem.continent,
                            name: tripItem.name,
                            price: tripItem.price,
                          ),
                        );
                      })
                          .divide(const SizedBox(width: 16.0))
                          .addToStart(const SizedBox(width: 24.0))
                          .addToEnd(const SizedBox(width: 24.0)),
                    ),
                  );
                },
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(24.0, 16.0, 24.0, 12.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Nearby Accommodation',
                      style: FlutterFlowTheme.of(context).titleSmall.override(
                            fontFamily: 'Plus Jakarta Sans',
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                    Text(
                      'See All',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Plus Jakarta Sans',
                            color: FlutterFlowTheme.of(context).primary,
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                  ],
                ),
              ),
              Builder(
                builder: (context) {
                  final villa = FFAppState().villas.toList();
                  return SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: List.generate(villa.length, (villaIndex) {
                        final villaItem = villa[villaIndex];
                        return InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            context.pushNamed(
                              'Details',
                              queryParameters: {
                                'image': serializeParam(
                                  villaItem.image,
                                  ParamType.String,
                                ),
                                'name': serializeParam(
                                  villaItem.name,
                                  ParamType.String,
                                ),
                                'location': serializeParam(
                                  villaItem.location,
                                  ParamType.String,
                                ),
                                'price': serializeParam(
                                  villaItem.price,
                                  ParamType.double,
                                ),
                              }.withoutNulls,
                            );
                          },
                          child: AccomodationItemWidget(
                            key: Key('Key9f2_${villaIndex}_of_${villa.length}'),
                            image: villaItem.image,
                            continent: villaItem.location,
                            name: villaItem.name,
                            price: villaItem.price,
                          ),
                        );
                      })
                          .divide(const SizedBox(width: 16.0))
                          .addToStart(const SizedBox(width: 24.0))
                          .addToEnd(const SizedBox(width: 24.0)),
                    ),
                  );
                },
              ),
              Align(
                alignment: const AlignmentDirectional(-1.0, 0.0),
                child: Padding(
                  padding:
                      const EdgeInsetsDirectional.fromSTEB(24.0, 16.0, 24.0, 16.0),
                  child: Text(
                    'End of Year Discount',
                    style: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Plus Jakarta Sans',
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: Image.asset(
                        'assets/images/Rectangle_22495.png',
                      ).image,
                    ),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(16.0, 25.0, 0.0, 25.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '3-10 August 2023',
                          style:
                              FlutterFlowTheme.of(context).bodyLarge.override(
                                    fontFamily: 'Plus Jakarta Sans',
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    fontWeight: FontWeight.normal,
                                  ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 8.0, 0.0, 16.0),
                          child: Text(
                            'Discount up to 35% \nfor the 3rd trip',
                            style: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Plus Jakarta Sans',
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                        ),
                        FFButtonWidget(
                          onPressed: () {
                            print('Button pressed ...');
                          },
                          text: 'Get it Now',
                          options: FFButtonOptions(
                            width: MediaQuery.sizeOf(context).width * 1.0,
                            height: 40.0,
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                24.0, 0.0, 24.0, 0.0),
                            iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            textStyle: FlutterFlowTheme.of(context)
                                .labelSmall
                                .override(
                                  fontFamily: 'Plus Jakarta Sans',
                                  color: FlutterFlowTheme.of(context).primary,
                                ),
                            elevation: 0.0,
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).primary,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(24.0),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(24.0, 16.0, 24.0, 12.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Top Hotels',
                      style: FlutterFlowTheme.of(context).titleSmall.override(
                            fontFamily: 'Plus Jakarta Sans',
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                    Text(
                      'See All',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Plus Jakarta Sans',
                            color: FlutterFlowTheme.of(context).primary,
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                child: Builder(
                  builder: (context) {
                    final hotel = FFAppState().hotels.toList();
                    return Column(
                      mainAxisSize: MainAxisSize.max,
                      children: List.generate(hotel.length, (hotelIndex) {
                        final hotelItem = hotel[hotelIndex];
                        return InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            context.pushNamed(
                              'Details',
                              queryParameters: {
                                'image': serializeParam(
                                  hotelItem.image,
                                  ParamType.String,
                                ),
                                'name': serializeParam(
                                  hotelItem.name,
                                  ParamType.String,
                                ),
                                'location': serializeParam(
                                  hotelItem.location,
                                  ParamType.String,
                                ),
                                'price': serializeParam(
                                  hotelItem.price,
                                  ParamType.double,
                                ),
                              }.withoutNulls,
                            );
                          },
                          child: HotelItemWidget(
                            key: Key('Keygft_${hotelIndex}_of_${hotel.length}'),
                            image: hotelItem.image,
                            continent: hotelItem.location,
                            name: hotelItem.name,
                            price: hotelItem.price,
                            oldPrice: hotelItem.oldPrice,
                          ),
                        );
                      }).divide(const SizedBox(height: 16.0)),
                    );
                  },
                ),
              ),
            ].addToEnd(const SizedBox(height: 28.0)),
          ),
        ),
      ),
    );
  }
}
