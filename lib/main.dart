// Muhammad Dar
// CECS-453
// Mobile Application Development
// Lab Assignment #6
// Weather App
// June 23, 2026
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'weather_service.dart';

// Load environment variables before starting the app
void main() async {
  await dotenv.load(fileName: ".env");
  runApp(const MyApp());
}

// Main application widget
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WeatherPage(),
    );
  }
}

// Weather page widget
class WeatherPage extends StatefulWidget {
  const WeatherPage({super.key});

  @override
  State<WeatherPage> createState() => _WeatherPageState();
}

class _WeatherPageState extends State<WeatherPage> {
  // Controller for city input
  final cityController = TextEditingController();
  // Create WeatherService object
  final weatherService = WeatherService();

  // Variables to store weather information
  String temperature = '';
  String condition = '';
  String iconUrl = '';
  String message = 'Enter a city name';

  // Function to get weather data from API
  void getWeather() async {
    try {
      final data = await weatherService.fetchWeather(cityController.text);

      String weatherText = data['weather'][0]['description'];

      // Get temperature
      setState(() {
        temperature = data['main']['temp'].toStringAsFixed(1);

        // Capitalize weather condition
        condition = weatherText
            .split(' ')
            .map((word) => word[0].toUpperCase() + word.substring(1))
            .join(' ');

        // Get weather icon code
        String iconCode = data['weather'][0]['icon'];

        // Create icon URL
        iconUrl =
        'https://openweathermap.org/img/wn/$iconCode@2x.png';

        message = '';
      });
    } catch (e) {
      // Display error message if city is not found
      setState(() {
        message = 'Could not find weather';
        temperature = '';
        condition = '';
        iconUrl = '';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Background color of app
    backgroundColor: Colors.lightBlue[50],
      appBar: AppBar(
        title: const Text('Weather App'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: SizedBox(
            width: 500,
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 10,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // Cloud icon at top
                    const Icon(
                      Icons.cloud,
                      size: 70,
                      color: Colors.blue,
                    ),

                    const SizedBox(height: 15),

                    // Text field to enter city name
                    TextField(
                      controller: cityController,
                      decoration: const InputDecoration(
                        labelText: 'Enter City',
                        border: OutlineInputBorder(),
                      ),
                    ),

                    const SizedBox(height: 15),

                    // Button to fetch weather
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: getWeather,
                        child: const Text('Get Weather'),
                      ),
                    ),

                    const SizedBox(height: 25),

                    // Message displayed before search or on error
                    Text(
                      message,
                      style: const TextStyle(fontSize: 16),
                    ),

                    // Display weather icon
                    if (iconUrl.isNotEmpty)
                      Image.network(
                        iconUrl,
                        height: 120,
                      ),

                    // Display temperature
                    if (temperature.isNotEmpty)
                      Text(
                        '$temperature °C',
                        style: const TextStyle(
                          fontSize: 36,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                    const SizedBox(height: 15),

                    // Display weather condition
                    if (condition.isNotEmpty)
                      Text(
                        condition,
                        style: const TextStyle(
                          fontSize: 20,
                        ),
                      ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}