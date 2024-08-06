# Tatmaen - Azkar App

[![Flutter](https://img.shields.io/badge/Flutter-v3.2.1-blue)](https://flutter.dev)
[![License](https://img.shields.io/badge/license-MIT-green)](LICENSE)

Tatmaen is a meticulously designed Flutter application to help users engage in daily Azkar, explore Hadith, and keep track of prayer times. The app offers an intuitive and immersive experience for spiritual growth and daily remembrance.

## Table of Contents

- [Features](#features)
- [Screenshots](#screenshots)
- [Installation](#installation)
- [Usage](#usage)
- [Project Structure](#project-structure)
- [Contributing](#contributing)
- [License](#license)

## Features

- **Azkar Screen:** Browse and recite daily Azkar with tracking and sharing functionalities.
- **Hadith Screen:** Explore a collection of Hadith with detailed views.
- **Prayer Times:** Get accurate prayer times based on location and see the next prayer time.
- **Sebha Counter:** Count your recitations and get notified when you reach your target.
- **Customization:** Customize your experience with different themes and settings.

## Screenshots
| <img src="https://github.com/hamdyhaggag/Tatmaen-Azkar_App/blob/master/assets/screenshots/1.png" style="width: 350px;"/> |  <img src="https://github.com/hamdyhaggag/Tatmaen-Azkar_App/blob/master/assets/screenshots/2.png" style="width: 350px;"/>  |
|--|--|
| <img src="https://github.com/hamdyhaggag/Tatmaen-Azkar_App/blob/master/assets/screenshots/3.png" style="width: 350px;"/> | <img src="https://github.com/hamdyhaggag/Tatmaen-Azkar_App/blob/master/assets/screenshots/4.png" style="width: 350px;"/> |
| <img src="https://github.com/hamdyhaggag/Tatmaen-Azkar_App/blob/master/assets/screenshots/5.png" style="width: 350px;"/> | <img src="https://github.com/hamdyhaggag/Tatmaen-Azkar_App/blob/master/assets/screenshots/6.png" style="width: 350px;"/>  |
| <img src="https://github.com/hamdyhaggag/Tatmaen-Azkar_App/blob/master/assets/screenshots/7.png" style="width: 350px;"/> | <img src="https://github.com/hamdyhaggag/Tatmaen-Azkar_App/blob/master/assets/screenshots/8.png" style="width: 350px;"/> |

## Installation

1. **Clone the repository:**
   ```sh
   git clone https://github.com/hamdyhaggag/Tatmaen-Azkar_App.git
   cd Tatmaen-Azkar_App
   ```

2. **Install dependencies:**
   ```sh
   flutter pub get
   ```

3. **Run the app:**
   ```sh
   flutter run
   ```

## Usage

1. **Navigating the app:** Use the bottom navigation bar to switch between Azkar, Hadith, and Prayer Times screens.
2. **Adding Azkar:** Tap the add button to create a new Azkar entry.
3. **Tracking progress:** Track your progress with the Sebha counter and see visual indicators for completed recitations.

## Project Structure

The project follows a modular structure for better scalability and maintainability. Here’s a brief overview:

```plaintext
lib/
├── cubits/               # Contains the state management cubits for handling application state and business logic
├── models/               # Includes data models that represent the structure of the app's data
├── screens/              # UI screens for different features of the app
│   ├── azkar/            # Components related to the Azkar screen, including widgets and logic
│   ├── hadith/           # Components related to the Hadith screen, including widgets and logic
│   ├── prayer_times/     # Components related to the Prayer Times screen, including widgets and logic
│   └── sebha/            # Components related to the Sebha counter screen, including widgets and logic
├── services/             # Services for API calls, location services, and other backend interactions
├── utils/                # Utility functions, constants, and helpers used throughout the app
└── main.dart             # The main entry point of the app
```

## Contributing

We welcome contributions from the community! To contribute:

1. Fork the repository.
2. Create a new branch (`git checkout -b feature/your-feature-name`).
3. Make your changes.
4. Commit your changes (`git commit -m 'Add some feature'`).
5. Push to the branch (`git push origin feature/your-feature-name`).
6. Create a Pull Request.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

Thank you for using Tatmaen! We hope this app enhances your daily remembrance and spiritual journey.

### LICENSE
```
MIT License

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```

