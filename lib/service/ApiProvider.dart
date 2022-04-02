import 'package:http/http.dart' as http;
import 'package:app/utils/dialog.dart';
import 'dart:io';
import 'dart:convert';
import 'dart:async';
import 'ApiException.dart';
import 'session.dart';

class ApiProvider {
  Future<dynamic> get(String url) async {
    var responseJson;
    try {
      final response = await http.get(Uri.parse(url));
      responseJson = _response(response);
    } on SocketException {
      throw FetchDataException('No Internet connection');
    }
    return responseJson;
  }

  Future<dynamic> post(String url, dynamic) async {
    var responseJson;
    try {
      final response = await http.post(
        Uri.parse(url),
        body: dynamic,
      );
      responseJson = _response(response);
    } on SocketException {
      throw FetchDataException('No Internet connection');
    }
    return responseJson;
  }

  Future<dynamic> patch(String url, id, dynamic) async {
    var responseJson;
    try {
      final response = await http.patch(
        Uri.parse(url + '/' + id.toString()),
        body: dynamic,
      );
      responseJson = _response(response);
    } on SocketException {
      throw FetchDataException('No Internet connection');
    }
    return responseJson;
  }

  Future<dynamic> delete(String url, id) async {
    var responseJson;
    try {
      final response = await http.delete(Uri.parse(url + '/' + id.toString())),
          responseJson = _response(response);
    } on SocketException {
      throw FetchDataException('No Internet connection');
    }
    return responseJson;
  }

  Future<dynamic> show(String url, id) async {
    var responseJson;
    try {
      final response = await http.get(Uri.parse(url + '/' + '$id'));
      responseJson = _response(response);
    } on SocketException {
      throw FetchDataException('No Internet connection');
    }
    return responseJson;
  }

  dynamic _response(http.Response response) {
    switch (response.statusCode) {
      case 200:
        var responseJson = json.decode(response.body);
        return responseJson;
      case 400:
        throw BadRequestException(response.body.toString());
      case 401:
        // CustomWidgets.showErrorSnachbar(
        //     "UNAUTHORISED", "Please login to your account");
        throw UnauthorisedException(response.body.toString());
        break;
      case 403:
        CustomWidgets.showErrorSnachbar(
            "UNAUTHORISED", "You are not allowed to do this");
        throw UnauthorisedException(response.body.toString());
        break;
      case 500:
        CustomWidgets.showErrorSnachbar(
            "SERVER ERROR", "PLEASE TRY AGAIN LATER");
        break;
      case 422:
        var responseJson = json.decode(response.body);
        return responseJson;
        break;
      default:
        CustomWidgets.showErrorSnachbar(
            "NETWORK ERROR", "PLEASE CHECK YOUR INTERNET CONNECTION");
    }
  }
}
