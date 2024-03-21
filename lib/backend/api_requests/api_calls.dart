import 'dart:convert';

import 'api_manager.dart';
import 'interceptors.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start amplitude Group Code

class AmplitudeGroup {
  static String baseUrl = 'https://api2.amplitude.com';
  static Map<String, String> headers = {
    'Content-Type': 'application/json',
    'api_key': 'a4199a3a5690be1f193dbc7cb244788f',
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
        'api_key': 'a4199a3a5690be1f193dbc7cb244788f',
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

/// Start Amadeus Group Code

class AmadeusGroup {
  static String baseUrl = 'https://test.api.amadeus.com';
  static Map<String, String> headers = {};
  static TokenCall tokenCall = TokenCall();
  static GetHotelOffersCall getHotelOffersCall = GetHotelOffersCall();

  static final interceptors = [
    AmadeusInterceptor(),
  ];
}

class TokenCall {
  Future<ApiCallResponse> call() async {
    const ffApiRequestBody = '''
grant_type=client_credentials&client_id=BWTMb6ldfNTAHIvGZ17A0NSDnyBU1aFm&client_secret=U8M4Jws19cDMO6wj''';
    return FFApiInterceptor.makeApiCall(
      ApiCallOptions(
        callName: 'token',
        apiUrl: '${AmadeusGroup.baseUrl}/v1/security/oauth2/token',
        callType: ApiCallType.POST,
        headers: const {
          'Content-Type': 'application/x-www-form-urlencoded',
        },
        params: const {},
        body: ffApiRequestBody,
        bodyType: BodyType.TEXT,
        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        alwaysAllowBody: false,
      ),
      AmadeusGroup.interceptors,
    );
  }
}

class GetHotelOffersCall {
  Future<ApiCallResponse> call() async {
    return FFApiInterceptor.makeApiCall(
      ApiCallOptions(
        callName: 'getHotelOffers',
        apiUrl:
            '${AmadeusGroup.baseUrl}/v3/shopping/hotel-offers?hotelIds=HLLON101&adults=1',
        callType: ApiCallType.GET,
        headers: const {},
        params: const {},
        returnBody: true,
        encodeBodyUtf8: false,
        decodeUtf8: false,
        cache: false,
        alwaysAllowBody: false,
      ),
      AmadeusGroup.interceptors,
    );
  }
}

/// End Amadeus Group Code

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
