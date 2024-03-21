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

import 'index.dart'; // Imports other custom actions

import 'dart:convert';
import '/backend/api_requests/api_interceptor.dart';
import 'package:http/http.dart';

class AmadeusInterceptor extends FFApiInterceptor {
  @override
  Future<ApiCallOptions> onRequest({
    required ApiCallOptions options,
  }) async {
    // Perform any necessary calls or modifications to the [options] before
    // the API call is made.

    Map<String, dynamic> newHeaders = new Map<String, dynamic>();
    // fetch client id and client secret key from .env file
    String clientId = "BWTMb6ldfNTAHIvGZ17A0NSDnyBU1aFm" as String;
    String clientSecret = "U8M4Jws19cDMO6wj" as String;
    // Amadeus authorization endpoint
    Uri authorizationUri =
        Uri.parse("https://test.api.amadeus.com/v1/security/oauth2/token");
    var response;
    // send authorization request
    try {
      response = await post(authorizationUri,
          headers: {"Content-type": "application/x-www-form-urlencoded"},
          body:
              "grant_type=client_credentials&client_id=$clientId&client_secret=$clientSecret");
    } catch (e) {
      print("error generating token --> $e");
      return options;
    }
    Map data = jsonDecode(response.body);
    // get token from response
    var token = data['access_token'];

    try {
      // copy everything from options.headers to newHeaders except Authorization
      options.headers.forEach((key, value) {
        if (key != 'Authorization') {
          newHeaders[key] = value;
        }
      });
      newHeaders['Authorization'] = 'Bearer $token';
      var newOptions = new ApiCallOptions(
          callName: options.callName,
          callType: options.callType,
          apiUrl: options.apiUrl,
          headers: newHeaders,
          params: options.params,
          bodyType: options.bodyType,
          body: options.body,
          returnBody: options.returnBody,
          encodeBodyUtf8: options.encodeBodyUtf8,
          decodeUtf8: options.decodeUtf8,
          alwaysAllowBody: options.alwaysAllowBody,
          cache: options.cache);

      return newOptions;
    } catch (e) {
      print("error setting token --> $e");
      return options;
    }
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
