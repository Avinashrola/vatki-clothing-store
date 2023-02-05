// ignore_for_file: depend_on_referenced_packages

import 'dart:convert';
import 'dart:developer';
import 'package:Vatki_Clothing_Store/utils/getStore/get_store.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import '../apiUrls/api_url.dart';

class ApiBase {
  static final client = http.Client();
  // static Map<String, String>? requestHeaders;

  static Map<String, String> withOutTokenHeaders = {
    'Content-Type': 'application/json',
  };

  static Map<String, String> getrequestHeaders() {
    var requestHeaders = {
      'Content-Type': 'application/json',
      "authorization": "Bearer ${GetStoreData.getStore.read('access_token')}",
    };
    return requestHeaders;
  }

  static Uri url({
    required String extendedURL,
  }) {
    log('full url ${ApiUrl.baseUrl}$extendedURL');
    return Uri.parse(ApiUrl.baseUrl + extendedURL);
  }

  static Future getRequest({
    required String extendedURL,
    required bool withToken,
  }) async {
    return client.get(
      url(extendedURL: extendedURL),
      headers: withToken ? getrequestHeaders() : withOutTokenHeaders,
    );
  }

  static Future postRequest({
    required String extendedURL,
    required Object body,
    required bool withToken,
  }) async {
    log(jsonEncode(body));
    return client.post(url(extendedURL: extendedURL),
        headers: withToken ? getrequestHeaders() : withOutTokenHeaders,
        body: jsonEncode(body));
  }

  static Future putRequest({
    required String extendedURL,
    required Object body,
  }) async {
    log("putRequest ${jsonEncode(body)}");
    return client.put(url(extendedURL: extendedURL),
        headers: getrequestHeaders(), body: jsonEncode(body));
  }

  static Future deleteRequest({
    required String extendedURL,
  }) async {
    return client.delete(
      url(extendedURL: extendedURL),
      headers: getrequestHeaders(),
    );
  }
}
