import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/home/popular_filter_item/popular_filter_item_widget.dart';
import '/home/star_rating/star_rating_widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'filter_bottom_sheet_model.dart';
export 'filter_bottom_sheet_model.dart';

class FilterBottomSheetWidget extends StatefulWidget {
  const FilterBottomSheetWidget({super.key});

  @override
  State<FilterBottomSheetWidget> createState() =>
      _FilterBottomSheetWidgetState();
}

class _FilterBottomSheetWidgetState extends State<FilterBottomSheetWidget> {
  late FilterBottomSheetModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FilterBottomSheetModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

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
            mainAxisSize: MainAxisSize.max,
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
                    'Filter',
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
              Text(
                'Price Range',
                style: FlutterFlowTheme.of(context).labelLarge.override(
                      fontFamily: 'Plus Jakarta Sans',
                      fontWeight: FontWeight.bold,
                    ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: SliderTheme(
                      data: const SliderThemeData(
                        showValueIndicator: ShowValueIndicator.always,
                      ),
                      child: Slider(
                        activeColor: FlutterFlowTheme.of(context).primary,
                        inactiveColor: FlutterFlowTheme.of(context).alternate,
                        min: 0.0,
                        max: 1000.0,
                        value: _model.sliderValue1 ??= 5.0,
                        label: _model.sliderValue1.toString(),
                        onChanged: (newValue) {
                          newValue = double.parse(newValue.toStringAsFixed(2));
                          setState(() => _model.sliderValue1 = newValue);
                        },
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      borderRadius: BorderRadius.circular(12.0),
                      border: Border.all(
                        color: FlutterFlowTheme.of(context).line,
                      ),
                    ),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(20.0, 8.0, 20.0, 8.0),
                      child: Text(
                        valueOrDefault<String>(
                          formatNumber(
                            _model.sliderValue1,
                            formatType: FormatType.custom,
                            currency: '\$',
                            format: '',
                            locale: '',
                          ),
                          '0',
                        ),
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).titleSmall.override(
                              fontFamily: 'Plus Jakarta Sans',
                              color: FlutterFlowTheme.of(context).primary,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: SliderTheme(
                      data: const SliderThemeData(
                        showValueIndicator: ShowValueIndicator.always,
                      ),
                      child: Slider(
                        activeColor: FlutterFlowTheme.of(context).primary,
                        inactiveColor: FlutterFlowTheme.of(context).alternate,
                        min: 0.0,
                        max: 1000.0,
                        value: _model.sliderValue2 ??= 5.0,
                        label: _model.sliderValue2.toString(),
                        onChanged: (newValue) {
                          newValue = double.parse(newValue.toStringAsFixed(2));
                          setState(() => _model.sliderValue2 = newValue);
                        },
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      borderRadius: BorderRadius.circular(12.0),
                      border: Border.all(
                        color: FlutterFlowTheme.of(context).line,
                      ),
                    ),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(20.0, 8.0, 20.0, 8.0),
                      child: Text(
                        valueOrDefault<String>(
                          formatNumber(
                            _model.sliderValue2,
                            formatType: FormatType.custom,
                            currency: '\$',
                            format: '',
                            locale: '',
                          ),
                          '0',
                        ),
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).titleSmall.override(
                              fontFamily: 'Plus Jakarta Sans',
                              color: FlutterFlowTheme.of(context).primary,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 16.0),
                child: Text(
                  'Popular filters',
                  style: FlutterFlowTheme.of(context).labelLarge.override(
                        fontFamily: 'Plus Jakarta Sans',
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),
              Builder(
                builder: (context) {
                  final filter = FFAppState().popularFilters.toList();
                  return Wrap(
                    spacing: 12.0,
                    runSpacing: 12.0,
                    alignment: WrapAlignment.start,
                    crossAxisAlignment: WrapCrossAlignment.start,
                    direction: Axis.horizontal,
                    runAlignment: WrapAlignment.start,
                    verticalDirection: VerticalDirection.down,
                    clipBehavior: Clip.none,
                    children: List.generate(filter.length, (filterIndex) {
                      final filterItem = filter[filterIndex];
                      return InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          setState(() {
                            _model.selectedPopular = filterItem;
                          });
                        },
                        child: PopularFilterItemWidget(
                          key: Key('Keyqm1_${filterIndex}_of_${filter.length}'),
                          isSelected: filterItem == _model.selectedPopular,
                          text: filterItem,
                        ),
                      );
                    }),
                  );
                },
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 16.0),
                child: Text(
                  'Star Rating',
                  style: FlutterFlowTheme.of(context).labelLarge.override(
                        fontFamily: 'Plus Jakarta Sans',
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),
              Builder(
                builder: (context) {
                  final star = FFAppState().stars.toList();
                  return Wrap(
                    spacing: 12.0,
                    runSpacing: 12.0,
                    alignment: WrapAlignment.start,
                    crossAxisAlignment: WrapCrossAlignment.start,
                    direction: Axis.horizontal,
                    runAlignment: WrapAlignment.start,
                    verticalDirection: VerticalDirection.down,
                    clipBehavior: Clip.none,
                    children: List.generate(star.length, (starIndex) {
                      final starItem = star[starIndex];
                      return InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          setState(() {
                            _model.selectedStar = starItem;
                          });
                        },
                        child: StarRatingWidget(
                          key: Key('Key3wa_${starIndex}_of_${star.length}'),
                          isSelected: starItem == _model.selectedStar,
                          num: starItem,
                        ),
                      );
                    }),
                  );
                },
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 12.0),
                child: FFButtonWidget(
                  onPressed: () async {
                    Navigator.pop(context);
                  },
                  text: 'Apply Filter',
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
              FFButtonWidget(
                onPressed: () async {
                  Navigator.pop(context);
                },
                text: 'Clear All',
                options: FFButtonOptions(
                  width: double.infinity,
                  height: 48.0,
                  padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                  iconPadding:
                      const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily: 'Plus Jakarta Sans',
                        color: FlutterFlowTheme.of(context).error,
                      ),
                  elevation: 0.0,
                  borderSide: BorderSide(
                    color: FlutterFlowTheme.of(context).error,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(24.0),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
