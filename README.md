# Weather App 🌤️

A Flutter weather application that retrieves real-time weather information using the OpenWeatherMap API.

## Features

- Search weather by city name
- Display current temperature in Celsius
- Display weather condition description
- Display weather icon
- Responsive Flutter UI
- Secure API key management using `.env`

## Screenshots

(Add screenshots of your application here)

## Technologies Used

- Flutter
- Dart
- OpenWeatherMap API
- HTTP Package
- Flutter DotEnv

## Project Structure

```
weather_app/
│
├── lib/
│   ├── main.dart
│   └── weather_service.dart
│
├── .env
├── pubspec.yaml
└── README.md
```

## Setup Instructions

### 1. Clone the Repository

```bash
git clone https://github.com/YOUR_USERNAME/weather-app.git
cd weather-app
```

### 2. Install Dependencies

```bash
flutter pub get
```

### 3. Create Environment File

Create a `.env` file in the root directory:

```env
API_KEY=your_openweathermap_api_key
```

### 4. Run the Application

```bash
flutter run
```

## OpenWeatherMap API

This project uses the OpenWeatherMap Current Weather API.

API Documentation:

https://openweathermap.org/current

## Example

Search for a city:

```
Dubai
```

Output:

```
Temperature: 33.6 °C
Condition: Clear Sky
```

## Security Note

The `.env` file contains your API key and should not be committed to GitHub.

Add the following line to your `.gitignore`:

```gitignore
.env
```

## Future Improvements

- Current location weather
- 5-day weather forecast
- Dark mode support
- Animated weather backgrounds
- Search history
- Better error handling

## Author

Muhammad Dar, Peter Lam

# Team Member Contributions

This project was completed collaboratively by two team members. Both team members discussed, reviewed, and agreed upon the completion and implementation of all tasks.

## Team Member 1: Muhammad Dar

### Responsibilities

* Installed and configured Flutter SDK and Android Studio.
* Set up the Flutter project structure.
* Configured dependencies in `pubspec.yaml`.
* Created and managed the `.env` file for API key security.
* Implemented OpenWeatherMap API integration.
* Developed the `WeatherService` class for fetching weather data.
* Tested API functionality and verified weather results.
* Created the GitHub repository and managed version control.

## Team Member 2: Peter Lam

### Responsibilities

* Designed and implemented the user interface using Flutter widgets.
* Developed the weather search screen and user interaction features.
* Added weather icon display and weather information presentation.
* Improved application styling and visual appearance.
* Added code comments and documentation.
* Prepared the project report and README documentation.
* Assisted with testing, debugging, and deployment.

## Team Agreement

Both team members actively participated in the design, development, testing, and evaluation of the application. All completed tasks were reviewed and agreed upon by both team members before submission.

