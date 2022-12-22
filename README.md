# autism_simple_app

A Flutter project for teachers educating students in autistic spectrum

# Check out the wiki
Wiki is used to show what the app does and give readers a look and feel
Documentation here will be about how to run and dependencies of the application

## Getting Started

1. Download the repository by cloning or downloading the binaries
2. Ensure you have either Android or iOS running
3. Run `flutter run`

## How the app is arranged

- lib is where the code sits
    - main.dart is the init point
    - stack.dart is used to keep page history
    - common/ is where common components/data can be found (and reused)
    - pages/ is where all the widgets that form a page will sit. Any form of code that requires page level adjustments will be managed here
    - pages/components are widgets that are in pages and will exists only as such
- assets/images is where all the images are used for the application

## How to deploy
### Android
You can release directly by building an apk
`flutter build apk`

Otherwise you can follow this https://docs.flutter.dev/deployment/android to deploy on play store/ other android stores
```
keytool -genkey -v -keystore ~/upload-keystore.jks -keyalg RSA -keysize 2048 -validity 10000 -alias upload
echo "storePassword=<password from previous step>
keyPassword=<password from previous step>
keyAlias=upload
storeFile=<location of the key store file>" >> android/key.properties
flutter build apk
```

You can find the apk release at `build/app/outputs/flutter-apk/app-release.apk`

### iOS

## How to contribute
Feel free to contribute by raising a PR to the repository to the develop branch