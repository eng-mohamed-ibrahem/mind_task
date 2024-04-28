# Overview

This is a *Demo* app that demonstrates how to build a login screen using Flutter and Dart. It uses the BLoC pattern to separate the business logic from the UI. The app has a clean and simple design and is built to run on both Android and iOS devices.

The app allows users to log in with their email and password, and once logged in, the user can view and manage a list of products.

The user data is stored in local memory.

## Usage

To use this app, follow these steps:

1. clone the repository to your local machine.
2. run the command `flutter pub get`.
3. Run the command `flutter run`.
4. The app will be displayed on your device.
5. Click on the 'Login' button on the Login Screen.
6. Enter a valid email address (e.g., <aboelazm111@gmail.com>) in the email field.
7. Enter a password in the password field (e.g., <123456>).
8. Click the 'Login' button.
9. If the login is successful, you will be redirected to the Home Screen.

Note: The email and password used in the demo are not real credentials.

The app has two main screens:

1. **Login Screen**: This screen allows users to enter their email and password to log in.
2. **Home Screen**: This screen displays a list of products.

Here are the steps to use each screen:

## Login Screen

1. Enter your email in the email field.
2. Enter your password in the password field.
3. Click the 'Login' button.
4. If the login is successful, you will be redirected to the Home Screen.

## Home Screen

1. display the list of products.
2. click on 'more' to view more products.

## Dependencies

This app uses the following dependencies:

1. **Flutter Bloc**: used for state management.
2. **Easy Localization**: used for localization for different languages.
3. **Shimmer**: used for loading screen.
4. **Dio**: used for network requests and responses (e.g., get, post, etc.).
5. **Shared Preferences**: used to store user data locally.
6. **Get It**: used for dependency injection (e.g., service locator).
7. **freezed**: used for generating data models.
8. **cached_network_image**: used for displaying images from the internet.
9. **connectivity_plus**: used for checking internet connection.
