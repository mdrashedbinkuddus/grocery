import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

class GetJWTTokenCall {
  static Future<ApiCallResponse> call({
    String? username = '',
    String? password = '',
  }) {
    final body = '''
{
  "username": "${username}",
  "password": "${password}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Get JWT Token',
      apiUrl: 'https://winxss.com/wp-json/jwt-auth/v1/token',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'username': username,
        'password': password,
      },
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
    );
  }

  static dynamic token(dynamic response) => getJsonField(
        response,
        r'''$.token''',
      );
}
