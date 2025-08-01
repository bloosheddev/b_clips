<h1 align="center">
  <picture>
    <img width="150" src="https://raw.githubusercontent.com/bloosheddev/b_clips/refs/heads/main/assets/images/logo.png"/>
  </picture>

<p align="center">
  b_clips
</p>

<p>
<sub>
  Post anonymously in less than 5 clicks. No sign-in, no profile — just simple, fast sharing.
</sub>
</p>

[![GitHub release](https://img.shields.io/github/v/release/bloosheddev/b_clips)](https://github.com/bloosheddev/b_clips/releases)
[![Android Build](https://github.com/bloosheddev/b_clips/actions/workflows/android-build.yml/badge.svg?style=for-the-badge)](https://github.com/bloosheddev/b_clips/actions/workflows/android-build.yml)

</h1>

**b_clips** is a lightweight, anonymous social app where users can post and read content without needing an account. It’s designed to be minimal, fast, and completely private.


In today’s bloated social media landscape, even viewing content often requires creating an account or logging in. **b_clips** flips that idea on its head by offering a simple space where users can post and browse anonymously.

Inspired by platforms like Twitter but stripped down to the essentials, b_clips removes friction from social interaction. You can go from opening the app to posting in less than five taps. With no user profiles or sign-ins, privacy and simplicity are at the heart of the experience.

Built using **Flutter**, **Firebase**, and **Material 3**, the app delivers a smooth and modern user experience while staying easy to maintain and contribute to — especially for beginners.


## 🛠 Tech Stack

- **Flutter** – Cross-platform development  
- **Firebase** – Real-time database for storing posts  
- **Dart** – Main programming language  
- **Material 3** – UI components for a modern look and feel

## 📱 How to Use It

1. Open the **b_clips** app  
2. Tap **"New Clip"**  
3. Enter your **Title** and **Description**  
4. Tap **Submit**  
5. Instantly see your clip appear on the main feed — no account required

## 📦 Installation & Setup

Follow these steps to get **b_clips** up and running on your local development environment.

---

### ✅ Prerequisites

Before you start, make sure you have:

- [Flutter SDK](https://flutter.dev/docs/get-started/install) installed and added to your system path
- A working emulator or a physical device connected
- A Firebase project (for database and backend services)
- Git installed (for cloning the repo)

---

### 🔧 Step-by-step Instructions

#### 1. Clone the Repository

```
git clone https://github.com/bloosheddev/b_clips.git
cd b_clips
```

#### 2. Install Dependencies
```
flutter pub get
```

#### 3. Set Up Firebase

###### Skip to step 5 if you wanted to use the original b_clips database!

1. Go to Firebase Console
2. Create or open a Firebase project
3. Add an Android and/or iOS app in the Firebase project settings
- Download the Firebase configuration files:
  - For Android: google-services.json → place in android/app/
  - For iOS: GoogleService-Info.plist → place in ios/Runner/

#### 4. Enable Firebase Services
Make sure the following services are enabled in the Firebase Console:

- 🔥 Cloud Firestore — to store and sync posts

#### 5. Run the App

```
flutter run
```

## 🛠 Need More?
If you're contributing, feel free to fork and open a pull request.

If you're testing, feel free to post — no login required!

## 🐞Todo & Bugs
- Topbar only change to dark when init. (Android 10 Bugs ig)
