import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/home/hotel_item/hotel_item_widget.dart';
import '/home/tranding_item/tranding_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'whishlist_model.dart';
export 'whishlist_model.dart';

class WhishlistWidget extends StatefulWidget {
  const WhishlistWidget({super.key});

  @override
  State<WhishlistWidget> createState() => _WhishlistWidgetState();
}

class _WhishlistWidgetState extends State<WhishlistWidget> {
  late WhishlistModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WhishlistModel());

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
                'My Favorite',
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
          actions: const [],
          centerTitle: false,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 36.0, 0.0, 0.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                    child: TextFormField(
                      controller: _model.textController,
                      focusNode: _model.textFieldFocusNode,
                      obscureText: false,
                      decoration: InputDecoration(
                        hintText: 'Search...',
                        hintStyle:
                            FlutterFlowTheme.of(context).titleSmall.override(
                                  fontFamily: 'Plus Jakarta Sans',
                                  color: FlutterFlowTheme.of(context).gray60,
                                  fontWeight: FontWeight.w600,
                                ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).secondary,
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
                        fillColor: FlutterFlowTheme.of(context).secondary,
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
                      style: FlutterFlowTheme.of(context).titleSmall.override(
                            fontFamily: 'Plus Jakarta Sans',
                            fontWeight: FontWeight.w600,
                          ),
                      validator:
                          _model.textControllerValidator.asValidator(context),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 16.0),
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
                                            : FlutterFlowTheme.of(context)
                                                .gray60,
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
                                        color:
                                            _model.selectedCategory == 'Beach'
                                                ? FlutterFlowTheme.of(context)
                                                    .secondaryBackground
                                                : FlutterFlowTheme.of(context)
                                                    .gray60,
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
                                        color: _model.selectedCategory ==
                                                'Mountain'
                                            ? FlutterFlowTheme.of(context)
                                                .secondaryBackground
                                            : FlutterFlowTheme.of(context)
                                                .gray60,
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
                                            : FlutterFlowTheme.of(context)
                                                .gray60,
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
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
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
                                key: Key(
                                    'Keyqdv_${hotelIndex}_of_${hotel.length}'),
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
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(24.0, 16.0, 24.0, 0.0),
                    child: Builder(
                      builder: (context) {
                        final tranding = FFAppState().trandings.toList();
                        return Column(
                          mainAxisSize: MainAxisSize.max,
                          children:
                              List.generate(tranding.length, (trandingIndex) {
                            final trandingItem = tranding[trandingIndex];
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
                                      trandingItem.image,
                                      ParamType.String,
                                    ),
                                    'name': serializeParam(
                                      trandingItem.location,
                                      ParamType.String,
                                    ),
                                    'location': serializeParam(
                                      trandingItem.location,
                                      ParamType.String,
                                    ),
                                    'price': serializeParam(
                                      119.50,
                                      ParamType.double,
                                    ),
                                  }.withoutNulls,
                                );
                              },
                              child: TrandingItemWidget(
                                key: Key(
                                    'Keyljt_${trandingIndex}_of_${tranding.length}'),
                                image: trandingItem.image,
                                location: trandingItem.location,
                              ),
                            );
                          }).divide(const SizedBox(height: 16.0)),
                        );
                      },
                    ),
                  ),
                ].addToEnd(const SizedBox(height: 70.0)),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
