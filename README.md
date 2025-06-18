Weather Forecast App

This Flutter mobile application provides current and future weather forecasts for any location worldwide, powered by the OpenWeatherMap API.
Features

    Current Weather: Displays real-time conditions.

    Future Forecast: Shows upcoming weather trends.

    City Search: Easy lookup for specific cities.

    Detailed View: Includes temperature, humidity, wind speed, and weather description.

Technologies Used

    Flutter & Dart: For cross-platform mobile development.

    OpenWeatherMap API: Data source (https://openweathermap.org/api).

    HTTP package: For API communication.

Installation

    Clone the repository: git clone <YOUR_REPO_URL>

    Install dependencies: flutter pub get

    Get OpenWeatherMap API Key:

        Sign up at OpenWeatherMap API.

        Create lib/api_config.dart and add your key:

        const String openWeatherMapApiKey = 'YOUR_API_KEY_HERE';

        Never commit your API key to public repositories!

Running the App

    Connect a device or start an emulator.

    Run: flutter run

License

This project is licensed under the MIT License. (See LICENSE.md if applicable).
