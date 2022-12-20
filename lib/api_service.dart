import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

import 'exception_handler/ExceptionHandler.dart';


const baseURL ="https://keprapibeta.hcamgt.com";
class ApiService {
  var client = http.Client();
Future<dynamic> get(String api,String token) async{
  debugPrint("${baseURL + api}");
  var url =Uri.parse(baseURL + api);
  var _headers = {
    'Authorization':'Bearer $token'
  };
  try {
    var response = await client.get(url, headers: _headers);

    return _processResponse(response,url);
  }catch(e){
    ExceptionHandlers().getExceptionString(e);
  }



}
}

dynamic _processResponse(http.Response response, Uri url) {
switch(response.statusCode){
  case 200:
    var responseJson = response.body;
    debugPrint("response body =>"+response.body);
    return responseJson;
    case 401://BadRequest
    debugPrint("Bad Request => ${response.statusCode}");
      throw UnAuthorizedException(jsonDecode(response.body)['message']);
  case 400: //Bad Request
    debugPrint("Bad Request => ${response.statusCode}");
   throw BadRequestException(jsonDecode(response.body)['message']);
  case 403://Forbidden
    debugPrint("Bad Request => ${response.statusCode}");
    throw UnAuthorizedException(jsonDecode(response.body)['message']);
  case 404:
    debugPrint("Bad Request => ${response.statusCode}");
    throw NotFoundException(jsonDecode(response.body)['message']);
  case 440:
    debugPrint("Bad Request => ${response.statusCode}");
    throw UnAuthorizedException(jsonDecode(response.body)['message']);
  case 500:
    debugPrint("Bad Request => ${response.statusCode}");
    debugPrint("Internal Server Error: ${response.statusCode}" );
    break;
    default:
      debugPrint("Bad Request => ${response.statusCode}");
      throw FetchDataException("Data not found","$url");
}
}
