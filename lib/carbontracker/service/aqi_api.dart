import 'dart:convert';

import 'package:greenlivinghub/carbontracker/models/service/aqi_response.dart';
import 'package:greenlivinghub/carbontracker/theme/constants/url.dart';
import 'package:http/http.dart' as http;

class AqiApi {
  final http.Client client;

  AqiApi() : client = http.Client();

  Future<AqiData> getAirQuality(String city) async {
    http.Response rawResp = await client.get(Uri.parse(buildUrl(city)));
    Map rawJsonResp = jsonDecode(utf8.decode(rawResp.bodyBytes)) as Map;
    AqiResponse parsedResp = AqiResponse.fromJson(rawJsonResp);
    return parsedResp.data;
  }
}
