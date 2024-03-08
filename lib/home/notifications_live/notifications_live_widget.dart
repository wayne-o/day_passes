import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'notifications_live_model.dart';
export 'notifications_live_model.dart';

class NotificationsLiveWidget extends StatefulWidget {
  const NotificationsLiveWidget({super.key});

  @override
  State<NotificationsLiveWidget> createState() =>
      _NotificationsLiveWidgetState();
}

class _NotificationsLiveWidgetState extends State<NotificationsLiveWidget> {
  late NotificationsLiveModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NotificationsLiveModel());

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
                'Notifications',
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
                                  'Booking',
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
                                  'Vacation',
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
                                  'Payment',
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
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Today',
                          style:
                              FlutterFlowTheme.of(context).labelLarge.override(
                                    fontFamily: 'Plus Jakarta Sans',
                                    fontWeight: FontWeight.w600,
                                  ),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 30.0,
                              height: 30.0,
                              clipBehavior: Clip.antiAlias,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                              ),
                              child: Image.network(
                                'data:image/jpeg;base64,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',
                                fit: BoxFit.cover,
                              ),
                            ),
                            Expanded(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'There\'s a message from Kamal, please check the message',
                                    style:
                                        FlutterFlowTheme.of(context).bodyMedium,
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 8.0, 0.0, 0.0),
                                    child: Text(
                                      '2 hours Ago',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Plus Jakarta Sans',
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            fontSize: 10.0,
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ].divide(const SizedBox(width: 8.0)),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 30.0,
                              height: 30.0,
                              clipBehavior: Clip.antiAlias,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                              ),
                              child: Image.network(
                                'data:image/jpeg;base64,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',
                                fit: BoxFit.cover,
                              ),
                            ),
                            Expanded(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'There\'s a message from Kamal, please check the message',
                                    style:
                                        FlutterFlowTheme.of(context).bodyMedium,
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 8.0, 0.0, 0.0),
                                    child: Text(
                                      '2 hours Ago',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Plus Jakarta Sans',
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            fontSize: 10.0,
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ].divide(const SizedBox(width: 8.0)),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 30.0,
                              height: 30.0,
                              clipBehavior: Clip.antiAlias,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                              ),
                              child: Image.network(
                                'https://s3.amazonaws.com/pix.iemoji.com/images/emoji/apple/ios-12/256/party-popper.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                            Expanded(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Thank you for being our loyal customer, you get a 5% discount',
                                    style:
                                        FlutterFlowTheme.of(context).bodyMedium,
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 8.0, 0.0, 0.0),
                                    child: Text(
                                      '2 hours Ago',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Plus Jakarta Sans',
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            fontSize: 10.0,
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ].divide(const SizedBox(width: 8.0)),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 6.0, 0.0, 0.0),
                          child: Text(
                            'Yesterday',
                            style: FlutterFlowTheme.of(context)
                                .labelLarge
                                .override(
                                  fontFamily: 'Plus Jakarta Sans',
                                  fontWeight: FontWeight.w600,
                                ),
                          ),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 30.0,
                              height: 30.0,
                              clipBehavior: Clip.antiAlias,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                              ),
                              child: Image.network(
                                'data:image/png;base64,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',
                                fit: BoxFit.cover,
                              ),
                            ),
                            Expanded(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Your order for a holiday to Pandawa Beach was successful',
                                    style:
                                        FlutterFlowTheme.of(context).bodyMedium,
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 8.0, 0.0, 0.0),
                                    child: Text(
                                      '2 hours Ago',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Plus Jakarta Sans',
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            fontSize: 10.0,
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ].divide(const SizedBox(width: 8.0)),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 30.0,
                              height: 30.0,
                              clipBehavior: Clip.antiAlias,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                              ),
                              child: Image.network(
                                'https://e7.pngegg.com/pngimages/348/800/png-clipart-man-wearing-blue-shirt-illustration-computer-icons-avatar-user-login-avatar-blue-child.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                            Expanded(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'There\'s a message from John, please check the message',
                                    style:
                                        FlutterFlowTheme.of(context).bodyMedium,
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 8.0, 0.0, 0.0),
                                    child: Text(
                                      '2 hours Ago',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Plus Jakarta Sans',
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            fontSize: 10.0,
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ].divide(const SizedBox(width: 8.0)),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 30.0,
                              height: 30.0,
                              clipBehavior: Clip.antiAlias,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                              ),
                              child: Image.network(
                                'https://images.emojiterra.com/google/noto-emoji/unicode-15.1/color/share/1f5d3.jpg',
                                fit: BoxFit.cover,
                              ),
                            ),
                            Expanded(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'change of date for staying at the hotel has been successfully updated',
                                    style:
                                        FlutterFlowTheme.of(context).bodyMedium,
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 8.0, 0.0, 0.0),
                                    child: Text(
                                      '2 hours Ago',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Plus Jakarta Sans',
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryText,
                                            fontSize: 10.0,
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ].divide(const SizedBox(width: 8.0)),
                        ),
                      ].divide(const SizedBox(height: 16.0)),
                    ),
                  ),
                  Container(
                    height: 200.0,
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
