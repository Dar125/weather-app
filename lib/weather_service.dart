// Muhammad Dar
// CECS-453
// Mobile Application Development
// Lab Assignment #6
// Weather App
// June 23, 2026
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter_dotenv/flutter_dotenv.dart';

class WeatherService {
  // Fetch weather data from OpenWeatherMap API
  Future<Map<String, dynamic>> fetchWeather(String city) async {
    // Read API key from .env file
    final apiKey = dotenv.env['API_KEY'];

    final response = await http.get(
      Uri.parse(
        'https://api.openweathermap.org/data/2.5/weather?q=$city&appid=$apiKey&units=metric',
      ),
    );

    if (response.statusCode == 200) {
      // Convert JSON response into Dart Map
      return jsonDecode(response.body);
    } else {
      // Show error if request fails
      throw Exception('Failed to load weather data');
    }
  }
}