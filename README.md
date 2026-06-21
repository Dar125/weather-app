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
