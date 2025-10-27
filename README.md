**📝 Simple Flutter Todo List App**

A Clean, Persistent Mobile Task Manager built with Dart & Flutter

💡 Overview

This project is a simple, yet robust, Todo List application developed using the Flutter framework and the Dart programming language. The goal was to create a mobile-first task manager that maintains state persistence across app sessions without relying on a remote database.

Core Features

Feature

Implementation Detail

Status

CRUD Operations

Add, View, Toggle Completion, Delete tasks.

✅ Complete

Local Persistence

Uses shared_preferences to save tasks locally.

✅ Complete

Material Design 3

Modern, responsive, and aesthetically pleasing UI.

✅ Complete

Validation

Prevents adding empty tasks.

✅ Complete

🛠️ Technology Stack

Technology

Role

Framework

Flutter 3.x+

Language

Dart 3.x+

IDE

Android Studio / VS Code

Dependencies

shared_preferences (for asynchronous, persistent data storage)

🚀 Getting Started

These instructions will get a copy of the project up and running on your local machine for development and testing purposes.

Prerequisites

You need the following software installed:

Flutter SDK (Ensure your Flutter channel is stable.)

flutter upgrade
flutter doctor -v


Android Studio or VS Code with the Flutter and Dart extensions.

Installation Steps

Clone the Repository (or start a new project):

flutter create todo_list_app
cd todo_list_app
# Replace content of lib/main.dart with the provided code


Add Dependencies: Open your pubspec.yaml file and ensure the shared_preferences package is listed under dependencies:

# pubspec.yaml snippet
dependencies:
  flutter:
    sdk: flutter
  shared_preferences: ^2.2.2  # Always use the latest stable version


Fetch Packages: Run the command to download the new dependency:

flutter pub get


Run the App: Connect a physical device or launch an emulator, and then execute:

flutter run


📦 Generating the Installable APK File

This is the key step to create the final, standalone Android application installer file.

The app-release.apk is the file you can distribute and install on any Android phone directly.

Execute the Build Command: Navigate to the root directory of your project in the terminal and run:

flutter build apk --release


Location of the APK File: Once the build is successful, the optimized APK file will be located at:

build/app/outputs/flutter-apk/app-release.apk







📜 License

This project is licensed under the MIT License - see the LICENSE file (if applicable) for details.
