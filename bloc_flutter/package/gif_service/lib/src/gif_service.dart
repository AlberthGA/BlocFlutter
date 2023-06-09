/// {@template gif_service}
/// My new Flutter package
import 'dart:convert';

import 'package:http/http.dart' as http;

/// {@endtemplate}
class GifService {
  /// {@macro gif_service}
  GifService({http.Client? httpClient})
      : _httpClient = httpClient ?? http.Client();

  final http.Client _httpClient;
  final String base_url = "api.giphy.com";
  final String endPoint = '/v1/gifs/trending';
  final String apiKey = '4JSQVFCxZi5F1yfzaTwt7FL75NdAWGP3';

  Future<List<String>> fetchGifs() async {
    final uri = Uri.http(base_url, endPoint, {'api_key': apiKey});

    http.Response response;
    List body;

    try {
      response = await _httpClient.get(uri);
    } on Exception {
      throw Exception();
    }

    if (response.statusCode != 200) {
      throw HttpRequestException();
    }

    try {
      body = jsonDecode(response.body)['data'] as List;
    } on Exception {
      throw JsonDecodeException();
    }

    return body
        .map((url) => url['images']['original']['url'].toString())
        .toList();
  }
}

class HttpRequestException implements Exception {}

class JsonDecodeException implements Exception {}
