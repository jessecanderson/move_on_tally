import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:http/io_client.dart';
import 'package:move_on_tally/services/app_exception.dart';

// ignore_for_file:prefer_typing_uninitialized_variables,sort_constructors_first,avoid_print

class ApiBaseHelper {
  // base URL for all API calls
  final String baseURL = 'https://localhost:8443';

  ApiBaseHelper() {
    client = http.Client();
  }

  @visibleForTesting
  ApiBaseHelper.private({this.client});

  http.Client client;

  bool _certCheck(cert, host, port) => true;
  http.Client allowCertificateClient() {
    final ioClient = HttpClient()..badCertificateCallback = _certCheck;
    return IOClient(ioClient);
  }

  /// The get() method will retrive data from a URL passed in.
  Future<dynamic> get(String url) async {
    var _responseJson;
    try {
      final response = await allowCertificateClient().get(url);
      _responseJson = _returnResponse(response);
    } on Exception catch (error) {
      throw FetchDataException('$error');
    }
    return _responseJson;
  }

  /// The post() method will post data. Requires a body to pass to the API.
  Future<dynamic> post(String url, dynamic body) async {
    var _resposneJson;
    try {
      final response = await client.post(url, body: body);
      _resposneJson = _returnResponse(response);
    } on SocketException catch (error) {
      throw FetchDataException('$error');
    }
    return _resposneJson;
  }

  // Private check on the HTTP response code to make sure no errors occured.
  dynamic _returnResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        {
          final dynamic responseJson = json.decode(response.body);
          print(responseJson);
          return responseJson;
        }
      case 400:
        {
          throw BadRequestException(response.body.toString());
        }
      case 401:
        {
          throw UnauthorisedException(response.body.toString());
        }
      case 403:
        {
          throw UnauthorisedException(response.body.toString());
        }
      case 500:
        {
          throw InternalServerException(response.body.toString());
        }
      default:
        {
          throw FetchDataException('An error occured');
        }
    }
  }
}
