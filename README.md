# stylish_app

A polished Flutter e-commerce application demonstrating clean UI, modular architecture, and Firebase-backed authentication.

# ScreensShot

<img width="977" height="560" alt="22" src="https://github.com/user-attachments/assets/373b0823-5f67-462a-b4a1-5a4585e361db" />
<img width="270" height="576" alt="21" src="https://github.com/user-attachments/assets/3943da66-cb89-4d7d-9250-e6d88741d410" />
<img width="280" height="585" alt="20" src="https://github.com/user-attachments/assets/282e6a18-1cc7-4052-9145-34131546f6de" />
<img width="271" height="586" alt="19" src="https://github.com/user-attachments/assets/df137ba6-d796-496b-9df0-69a175f91c5e" />
<img width="271" height="593" alt="18" src="https://github.com/user-attachments/assets/b27c8993-8fc4-4f6c-bf9b-aa269bbf5347" />
<img width="276" height="586" alt="17" src="https://github.com/user-attachments/assets/0950d3fe-862b-49ad-aae3-e7e9761d982f" />
<img width="282" height="596" alt="16" src="https://github.com/user-attachments/assets/1a30cf6e-1a16-4e9a-b3b1-9cc059fd7949" />
<img width="273" height="576" alt="15" src="https://github.com/user-attachments/assets/de7817fd-06a4-4ee0-8659-b24f6a1f3dbc" />
<img width="268" height="586" alt="13" src="https://github.com/user-attachments/assets/e1228883-a28c-407d-9d5f-c9f329db81f8" />
<img width="275" height="586" alt="12" src="https://github.com/user-attachments/assets/77240e3a-40aa-4f67-af72-cd619f590d74" />
<img width="283" height="580" alt="11" src="https://github.com/user-attachments/assets/f56c8e4d-ee9b-4ed3-996c-730d3fa00038" />
<img width="264" height="584" alt="10" src="https://github.com/user-attachments/assets/4e6fbab3-ae0a-420e-92d9-471763bda7c1" />
<img width="270" height="571" alt="9" src="https://github.com/user-attachments/assets/d4ea002c-80fb-42cb-b3c8-e695f588424d" />
<img width="274" height="583" alt="8" src="https://github.com/user-attachments/assets/ef69cf40-3fed-40a9-b563-277ee198ab07" />
<img width="265" height="588" alt="7" src="https://github.com/user-attachments/assets/43c3a6fd-295a-461c-8efd-f1948aeea699" />
<img width="280" height="599" alt="6" src="https://github.com/user-attachments/assets/d85a874e-81d2-4644-9e58-459037d09d37" />
<img width="279" height="578" alt="5" src="https://github.com/user-attachments/assets/af99e6d7-8198-407b-9120-fa5e90229394" />
<img width="277" height="585" alt="4" src="https://github.com/user-attachments/assets/604244eb-2d1e-4725-8772-c6fe1f90a2d5" />
<img width="274" height="583" alt="3" src="https://github.com/user-attachments/assets/d41d8563-bcce-4dc0-9439-ff14d16f8ab0" />
<img width="276" height="580" alt="2" src="https://github.com/user-attachments/assets/b2064803-53ce-43a7-92c2-d821238fdf45" />
<img width="281" height="579" alt="1" src="https://github.com/user-attachments/assets/d217bb96-61fc-4dd4-afa0-df1b29127890" />
<img width="104" height="209" alt="0" src="https://github.com/user-attachments/assets/028bd8ab-b4b5-4a4c-be7f-a98b43af2011" />



## ?? What is stylish_app?

`stylish_app` is a fully structured Flutter starter app built for modern shopping experiences. It includes authentication, product browsing, shopping bag management, profile handling, and reusable architecture for easy expansion.

## ? Key Features

- Firebase authentication (email/password + Google Sign-In)
- Modular feature-based architecture
- Reusable shared components and centralized theming
- Product browsing with grid and detail screens
- Shopping bag and checkout-ready structure
- Support for onboarding and splash flows

## ?? Project Structure

- `lib/main.dart` — app entry point and route initialization
- `lib/core/` — shared utilities, theme, error handling, DI
- `lib/features/` — application features grouped by domain
- `lib/features/auth/` — authentication flow, remote data source, models
- `lib/features/shop/` — shop, product display, and bag management
- `assets/` — image assets for all app screens and flows

## ?? Main Dependencies

- `flutter_bloc`, `bloc` — state management
- `get_it`, `injectable` — dependency injection
- `firebase_core`, `firebase_auth`, `cloud_firestore` — Firebase support
- `google_sign_in` — Google auth flow
- `flutter_svg` — vector icons
- `flutter_staggered_grid_view` — product grids
- `internet_connection_checker_plus` — connectivity checks
- `email_validator` — form validation
- `shared_preferences` — local storage

## ?? Setup

### Prerequisites

- Flutter SDK (stable)
- Android Studio, VS Code, or another supported editor
- Firebase project for auth and Firestore functionality

### Install dependencies

```bash
flutter pub get
```

### Firebase configuration

To use authentication features, configure Firebase for each platform:

- Android: place `google-services.json` in `android/app/`
- iOS: place `GoogleService-Info.plist` in `ios/Runner/`

Enable the following sign-in providers in Firebase Authentication:

- Email/Password
- Google

### Run the app

```bash
flutter run
```

## ?? Recommended commands

```bash
flutter pub get
flutter analyze
flutter test
flutter run
```

## ?? Assets

The app currently includes these asset folders:

- `assets/signup_and_signin/`
- `assets/splash/`
- `assets/home/`
- `assets/profile/`
- `assets/shop/`
- `assets/trending_product/`

Swap or update image content here to customize the app's look and feel.

## ?? Development Notes

- Keep API keys and secrets out of version control.
- Follow the existing modular folder layout when adding new features.
- Use shared components and centralized theming for consistency.
- Keep tests and linting up to date.

## ?? Next Improvements

Potential enhancements for the app:

- Add Firestore-backed product catalog and queries
- Implement checkout/payment integration
- Add favorites / wish list functionality
- Support push notifications
- Add localization and theme switching

## ?? Contributing

Contributions are welcome. Open issues for bugs or new feature ideas, then submit pull requests to improve the app.

## ?? License

This repository currently has no license file. Add a `LICENSE` if you plan to share or publish the project publicly.
