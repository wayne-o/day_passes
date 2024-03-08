import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/home/hotel_item/hotel_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'search_model.dart';
export 'search_model.dart';

class SearchWidget extends StatefulWidget {
  const SearchWidget({super.key});

  @override
  State<SearchWidget> createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {
  late SearchModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SearchModel());

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
                'Search',
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
            padding: const EdgeInsetsDirectional.fromSTEB(24.0, 36.0, 24.0, 0.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
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
                          style:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Plus Jakarta Sans',
                                    fontWeight: FontWeight.w600,
                                  ),
                          validator: _model.textControllerValidator
                              .asValidator(context),
                        ),
                      ),
                      FFButtonWidget(
                        onPressed: () async {
                          context.pushNamed('SearchResult');
                        },
                        text: 'Go',
                        options: FFButtonOptions(
                          height: 60.0,
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              24.0, 0.0, 24.0, 0.0),
                          iconPadding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: FlutterFlowTheme.of(context).primary,
                          textStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Plus Jakarta Sans',
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                  ),
                          elevation: 0.0,
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).primary,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(55.0),
                        ),
                      ),
                    ].divide(const SizedBox(width: 12.0)),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
                    child: GridView(
                      padding: EdgeInsets.zero,
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 16.0,
                        mainAxisSpacing: 16.0,
                        childAspectRatio: 1.0,
                      ),
                      primary: false,
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).black,
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: Image.network(
                                'data:image/jpeg;base64,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',
                              ).image,
                            ),
                            borderRadius: BorderRadius.circular(16.0),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Bali',
                                style: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: 'Plus Jakarta Sans',
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                              Text(
                                'Top destination',
                                style: FlutterFlowTheme.of(context)
                                    .bodySmall
                                    .override(
                                      fontFamily: 'Plus Jakarta Sans',
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      fontWeight: FontWeight.w500,
                                    ),
                              ),
                            ].divide(const SizedBox(height: 4.0)),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).black,
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: Image.network(
                                'https://pics.craiyon.com/2023-07-28/20f818ad4f6c4c5cb76c9c6139e4684f.webp',
                              ).image,
                            ),
                            borderRadius: BorderRadius.circular(16.0),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Hotels',
                                style: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: 'Plus Jakarta Sans',
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                              Text(
                                'Discover best stay',
                                style: FlutterFlowTheme.of(context)
                                    .bodySmall
                                    .override(
                                      fontFamily: 'Plus Jakarta Sans',
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      fontWeight: FontWeight.w500,
                                    ),
                              ),
                            ].divide(const SizedBox(height: 4.0)),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).black,
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: Image.network(
                                'https://media.npr.org/assets/img/2021/10/06/gettyimages-1302813215_wide-6c48e5a6aff547d2703693450c4805978de47435-s1100-c50.jpg',
                              ).image,
                            ),
                            borderRadius: BorderRadius.circular(16.0),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Promo',
                                style: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: 'Plus Jakarta Sans',
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                              Text(
                                'Special offers today',
                                style: FlutterFlowTheme.of(context)
                                    .bodySmall
                                    .override(
                                      fontFamily: 'Plus Jakarta Sans',
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      fontWeight: FontWeight.w500,
                                    ),
                              ),
                            ].divide(const SizedBox(height: 4.0)),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).black,
                            image: DecorationImage(
                              fit: BoxFit.cover,
                              image: Image.network(
                                'https://hips.hearstapps.com/hmg-prod/images/rear-view-silhouette-of-an-airplane-taking-off-at-royalty-free-image-1695239529.jpg?crop=1xw:0.88803xh;center,top&resize=1200:*',
                              ).image,
                            ),
                            borderRadius: BorderRadius.circular(16.0),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Flight',
                                style: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: 'Plus Jakarta Sans',
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      fontWeight: FontWeight.bold,
                                    ),
                              ),
                              Text(
                                'Find cheap ticket',
                                style: FlutterFlowTheme.of(context)
                                    .bodySmall
                                    .override(
                                      fontFamily: 'Plus Jakarta Sans',
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                      fontWeight: FontWeight.w500,
                                    ),
                              ),
                            ].divide(const SizedBox(height: 4.0)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 12.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Most popular searches',
                          style:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Plus Jakarta Sans',
                                    fontWeight: FontWeight.w600,
                                  ),
                        ),
                        Text(
                          'Crear All',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Plus Jakarta Sans',
                                    color: FlutterFlowTheme.of(context).error,
                                    fontWeight: FontWeight.w500,
                                  ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Hotel indo',
                            style: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                                  fontFamily: 'Plus Jakarta Sans',
                                  color: FlutterFlowTheme.of(context).gray90,
                                ),
                          ),
                          Icon(
                            Icons.close,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 18.0,
                          ),
                        ],
                      ),
                      Divider(
                        thickness: 1.0,
                        color: FlutterFlowTheme.of(context).line,
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Ubud Bali',
                            style: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                                  fontFamily: 'Plus Jakarta Sans',
                                  color: FlutterFlowTheme.of(context).gray90,
                                ),
                          ),
                          Icon(
                            Icons.close,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 18.0,
                          ),
                        ],
                      ),
                      Divider(
                        thickness: 1.0,
                        color: FlutterFlowTheme.of(context).line,
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Malang Hotel',
                            style: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                                  fontFamily: 'Plus Jakarta Sans',
                                  color: FlutterFlowTheme.of(context).gray90,
                                ),
                          ),
                          Icon(
                            Icons.close,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 18.0,
                          ),
                        ],
                      ),
                      Divider(
                        thickness: 1.0,
                        color: FlutterFlowTheme.of(context).line,
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Hotels Around',
                            style: FlutterFlowTheme.of(context)
                                .labelMedium
                                .override(
                                  fontFamily: 'Plus Jakarta Sans',
                                  color: FlutterFlowTheme.of(context).gray90,
                                ),
                          ),
                          Icon(
                            Icons.close,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 18.0,
                          ),
                        ],
                      ),
                      Divider(
                        thickness: 1.0,
                        color: FlutterFlowTheme.of(context).line,
                      ),
                    ],
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 12.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Frequently Visited',
                          style:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Plus Jakarta Sans',
                                    fontWeight: FontWeight.w600,
                                  ),
                        ),
                        Text(
                          'See All',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
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
                                  'Key1me_${hotelIndex}_of_${hotel.length}'),
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
                ].addToEnd(const SizedBox(height: 30.0)),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
