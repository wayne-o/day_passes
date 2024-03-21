import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
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
      _model.apiResult8ac = await AmplitudeGroup.analiticsCall.call();
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
                      'Popular today 🔥',
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
              FutureBuilder<ApiCallResponse>(
                future: AmadeusGroup.getHotelOffersCall.call(),
                builder: (context, snapshot) {
                  // Customize what your widget looks like when it's loading.
                  if (!snapshot.hasData) {
                    return Center(
                      child: SizedBox(
                        width: 40.0,
                        height: 40.0,
                        child: CircularProgressIndicator(
                          valueColor: AlwaysStoppedAnimation<Color>(
                            FlutterFlowTheme.of(context).primary,
                          ),
                        ),
                      ),
                    );
                  }
                  final rowGetHotelOffersResponse = snapshot.data!;
                  return Builder(
                    builder: (context) {
                      final hotelOffer = HotelOffersResponseStruct.maybeFromMap(
                                  rowGetHotelOffersResponse.jsonBody)
                              ?.data
                              .toList() ??
                          [];
                      return SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: List.generate(hotelOffer.length,
                                  (hotelOfferIndex) {
                            final hotelOfferItem = hotelOffer[hotelOfferIndex];
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
                                      hotelOfferItem.hotel.image,
                                      ParamType.String,
                                    ),
                                    'name': serializeParam(
                                      hotelOfferItem.hotel.name,
                                      ParamType.String,
                                    ),
                                    'location': serializeParam(
                                      hotelOfferItem.hotel.location,
                                      ParamType.String,
                                    ),
                                    'price': serializeParam(
                                      hotelOfferItem.hotel.price,
                                      ParamType.double,
                                    ),
                                  }.withoutNulls,
                                );
                              },
                              child: wrapWithModel(
                                model: _model.tripItemModels.getModel(
                                  (rowGetHotelOffersResponse.jsonBody
                                              .toList()
                                              .map<HotelOffersResponseStruct?>(
                                                  HotelOffersResponseStruct
                                                      .maybeFromMap)
                                              .toList()
                                          as Iterable<
                                              HotelOffersResponseStruct?>)
                                      .withoutNulls
                                      .length
                                      .toString(),
                                  hotelOfferIndex,
                                ),
                                updateCallback: () => setState(() {}),
                                child: TripItemWidget(
                                  key: Key(
                                    'Keyt76_${(rowGetHotelOffersResponse.jsonBody.toList().map<HotelOffersResponseStruct?>(HotelOffersResponseStruct.maybeFromMap).toList() as Iterable<HotelOffersResponseStruct?>).withoutNulls.length.toString()}',
                                  ),
                                  image:
                                      ' data:image/jpeg;base64,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',
                                  continent: hotelOfferItem.hotel.location,
                                  name: hotelOfferItem.hotel.name,
                                  price: hotelOfferItem.hotel.price,
                                ),
                              ),
                            );
                          })
                              .divide(const SizedBox(width: 16.0))
                              .addToStart(const SizedBox(width: 24.0))
                              .addToEnd(const SizedBox(width: 24.0)),
                        ),
                      );
                    },
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
