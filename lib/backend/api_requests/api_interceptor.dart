// ignore_for_file: prefer_final_fields

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallOptions, ApiCallResponse;

abstract class FFApiInterceptor {
  /// Function called prior to making the API call. Perform any necessary
  /// calls or modifications to the [options] before the API call is made.
  ///
  /// Example:
  /// ```dart
  /// @override
  /// Future<ApiCallResponse> onRequest(ApiCallOptions options) async {
  ///   final isAuthTokenValid = await checkIfAuthTokenValid(currentAuthToken);
  ///   if (!isAuthTokenValid) {
  ///     await actions.refreshAuthToken();
  ///   }
  ///   options.headers['Authorization'] = 'Bearer $currentAuthToken';
  ///   return response;
  /// }
  /// ```
  Future<ApiCallOptions> onRequest({
    required ApiCallOptions options,
  }) async =>
      options;

  /// Function called after the API call has been made. Perform any necessary
  /// calls or modifications to the [response] prior to returning it. If the
  /// API call should be retried, call the [retryFn] function which will call
  /// the API from scratch using the original [ApiCallOptions] passed in.
  Future<ApiCallResponse> onResponse({
    required ApiCallResponse response,
    required Future<ApiCallResponse> Function() retryFn,
  }) async =>
      response;

  static Future<ApiCallResponse> makeApiCall(
    ApiCallOptions options,
    List<FFApiInterceptor> interceptors,
  ) async {
    final initialOptions = options.clone();
    // Update the options for each interceptor.
    for (final interceptor in interceptors) {
      options = await interceptor.onRequest(options: options);
    }
    // Make the API call.
    var response = await ApiManager.instance.call(options);
    // Update the response for each interceptor, applied in reverse order.
    for (final interceptor in interceptors.reversed) {
      response = await interceptor.onResponse(
        response: response,
        retryFn: () => makeApiCall(initialOptions, interceptors),
      );
    }
    return response;
  }
}
