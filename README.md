# 📝 Simple Flutter Todo List App

A clean, persistent mobile task manager built with **Flutter** & **Dart**.

---

## 💡 Overview

This project is a simple, yet robust Todo List application developed using the Flutter framework and the Dart programming language.  
The goal was to create a **mobile-first task manager** that maintains **state persistence** across app sessions **without a remote database**.

---

## ✅ Core Features

| Feature | Implementation Detail | Status |
|--------|----------------------|:-----:|
| CRUD Operations | Add, View, Toggle Completion, Delete tasks | ✅ |
| Local Persistence | Uses `shared_preferences` to save tasks locally | ✅ |
| Material Design 3 | Modern, responsive UI | ✅ |
| Validation | Prevents adding empty tasks | ✅ |

---

## 🛠️ Technology Stack

| Technology | Role |
|-----------|------|
| **Flutter 3.x+** | Framework |
| **Dart 3.x+** | Programming Language |
| Android Studio / VS Code | Development Environments |
| `shared_preferences` | Persistent local storage |

---

## 🚀 Getting Started

Follow the steps below to set up the project locally:

### ✅ Prerequisites
Ensure you have:

```bash
flutter upgrade
flutter doctor -v
And either Android Studio or VS Code with Flutter/Dart extensions installed.
```
📥 Installation Steps

1️⃣ Create or clone the project

flutter create todo_list_app
cd todo_list_app
# Replace content of lib/main.dart with the provided code if needed


2️⃣ Add dependency in pubspec.yaml

dependencies:
  flutter:
    sdk: flutter
  shared_preferences: ^2.2.2


3️⃣ Fetch packages

flutter pub get


4️⃣ Run the app

flutter run

📦 Generate APK (Android)

This builds the distributable app installer.

1️⃣ Build the release APK

flutter build apk --release


2️⃣ Output Location

build/app/outputs/flutter-apk/app-release.apk


You can share & install this .apk on any Android device ✅

📜 License

This project is licensed under the MIT License.
See the LICENSE file for more details.
