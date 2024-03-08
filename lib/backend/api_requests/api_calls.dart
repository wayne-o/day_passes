import 'dart:convert';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start amplitude Group Code

class AmplitudeGroup {
  static String baseUrl = 'https://api2.amplitude.com';
  static Map<String, String> headers = {
    'Content-Type': 'application/json',
    'api_key': '3d0eb57bc18a0c8e482a432fd3dc4f5c',
  };
  static AnaliticsCall analiticsCall = AnaliticsCall();
}

class AnaliticsCall {
  Future<ApiCallResponse> call({
    String? userId = '',
    String? project = '',
    String? event = '',
  }) async {
    final ffApiRequestBody = '''
{
  "api_key": "3d0eb57bc18a0c8e482a432fd3dc4f5c",
  "events": [
    {
      "project": "$project",
      "library": "$project",
      "device_id": "<$userId>",
      "event_type": "$event"
    }
  ]
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Analitics',
      apiUrl: '${AmplitudeGroup.baseUrl}/2/httpapi',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'api_key': '3d0eb57bc18a0c8e482a432fd3dc4f5c',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

/// End amplitude Group Code

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
