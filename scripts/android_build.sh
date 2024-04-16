flutter clean
flutter build apk -t lib/main_development.dart
cd ..
cd "$(pwd)/build/app/outputs/flutter-apk/"
mv app-release.apk erp.apk
open  .