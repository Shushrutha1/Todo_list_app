📝 Simple Flutter Todo List App

Welcome to the Simple Flutter Todo List App project! This is a clean, minimal, and fully functional mobile application for managing daily tasks. It uses the Dart programming language and the Flutter framework, built and tested within Android Studio.

✨ Features

Task Management: Add, delete, and mark tasks as completed.

State Persistence: Tasks are saved locally on the device using SharedPreferences, ensuring they remain even after the app is closed and reopened.

Clean UI: Utilizes modern Material Design 3 principles for a responsive and intuitive user experience.

Single-File Simplicity: The core logic is contained in a single main.dart file for easy understanding and modification.

🛠️ Technology Stack

Component

Description

Framework

Flutter

Language

Dart

IDE

Android Studio (or VS Code)

Persistence

shared_preferences (for local, light-weight storage)

🚀 Setup and Installation

Follow these steps to get the project running on your local machine.

Prerequisites

Flutter SDK: Ensure Flutter is installed and configured correctly.

flutter doctor


Android Studio: Required for running the Android emulator or connecting a physical device.

Dart SDK: Included with Flutter.

1. Clone the Repository

Since this is a single-file example, you would typically create a new Flutter project and replace the content of lib/main.dart with the code provided.

# Create a new Flutter project
flutter create todo_list_app
cd todo_list_app


2. Add Dependencies

This project uses shared_preferences for local data storage. You must add it to your pubspec.yaml file:

# pubspec.yaml
dependencies:
  flutter:
    sdk: flutter
  shared_preferences: ^2.2.2  # Use the latest stable version


After editing pubspec.yaml, run:

flutter pub get


3. Run the App

Open the project in Android Studio or VS Code.

Select an emulator or a connected physical device.

Run the application:

flutter run


📦 Generating the APK File (Android Installer)

If you want the final, compiled .apk file that can be installed directly on any Android device, follow these simple steps from your project's root directory:

Build the Release Bundle:

flutter build apk --release


This command compiles the Dart code to native ARM/x86 code and packages it into a highly optimized APK bundle.

Locate the APK:

The generated file will be located here:

build/app/outputs/flutter-apk/app-release.apk


This is the file you can distribute and install on Android phones.

🖼️ Screenshots (Placeholder)

Mobile View

Desktop View





🤝 Contribution

Feel free to fork the repository and submit pull requests. All contributions are welcome!

📄 License

This project is open-source and available under the MIT License.
