import 'dart:convert';

import 'package:cryptocurrency_task/model/Cryptomodel.dart';
import 'package:http/http.dart' as http;
class ApiService
{
  static const String baseUrl="https://pro-api.coinmarketcap.com/";
  static const String apiKey="50d2794b-836d-4afd-8a76-399aee47de42";

  final _headerParams={
    "X-CMC_PRO_API_KEY":apiKey
  };

  Future<dynamic> getCryptocurrency() async
  {
    final uri=Uri.parse("${baseUrl}v1/cryptocurrency/listings/latest");
    final response=await http.get(uri,headers: _headerParams);
    if(response.statusCode==200)
      {
        return jsonDecode(response.body);
      }
    else if (response.statusCode == 400)
    {
      return 'Something went Wrong';
    }
    else {
      throw Exception('Failed to fetch data');
    }
  }

}