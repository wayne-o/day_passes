// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:convert';
import '/backend/api_requests/api_interceptor.dart';

class AmadeusInterceptor extends FFApiInterceptor {
  @override
  Future<ApiCallOptions> onRequest({
    required ApiCallOptions options,
  }) async {
    // Perform any necessary calls or modifications to the [options] before
    // the API call is made.

    // fetch client id and client secret key from .env file
    String clientId = "BWTMb6ldfNTAHIvGZ17A0NSDnyBU1aFm" as String;
    String clientSecret = "U8M4Jws19cDMO6wj" as String;
    // Amadeus authorization endpoint
    Uri authorizationUri =
        Uri.parse("https://test.api.amadeus.com/v1/security/oauth2/token");
    Response response;
    // send authorization request
    try {
      response = await post(authorizationUri,
          headers: {"Content-type": "application/x-www-form-urlencoded"},
          body:
              "grant_type=client_credentials&client_id=$clientId&client_secret=$clientSecret");
    } catch (e) {
      print("error generating token --> $e");
      return "Unable to generate access token due to error $e";
    }
    Map data = jsonDecode(response.body);
    // get token from response
    token = data['access_token'];

    options.headers['Authorization'] = 'Bearer $token';

    return options;
  }

  @override
  Future<ApiCallResponse> onResponse({
    required ApiCallResponse response,
    required Future<ApiCallResponse> Function() retryFn,
  }) async {
    // Perform any necessary calls or modifications to the [response] prior
    // to returning it.
    return response;
  }
}
