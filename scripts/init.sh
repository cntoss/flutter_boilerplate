#!/bin/bash

cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1
cd ..

echo "Installing dependencies..."
npm install
asset=""
if [[ "$OSTYPE" == "linux-gnu"* ]]; then
    asset="flutter-stylizer-for-linux"
    echo "Linux detected"
elif [[ "$OSTYPE" == "darwin"* ]]; then
    asset="flutter-stylizer-for-mac"
    echo "MacOS detected"
elif [[ "$OSTYPE" == "msys" ]]; then
    asset="flutter-stylizer-for-windows.exe"
    echo "Windows detected"
fi
echo "Downloading Flutter Stylizer..."
curl -fsSL "github.com/gmlewis/go-flutter-stylizer/releases/latest/download/$asset" -o "debug/flutter-stylizer" --create-dirs
chmod a+x debug/flutter-stylizer
cat <<EOT > flutter-stylizer.yaml
exclude:
  - "**/*.g.dart"
  - "**/*.gr.dart"
  - "**/*.freezed.dart"
  - "**/i18n.dart"
  - "lib/generated/**"

groupAndSortGetterMethods: true
memberOrdering:
  public-constructor
  named-constructors
  public-static-variables
  public-instance-variables
  public-override-variables
  private-static-variables
  private-instance-variables
  public-override-methods
  public-other-methods
  private-other-methods
  build-method
sortOtherMethods: true
EOT
echo "Completed!"
