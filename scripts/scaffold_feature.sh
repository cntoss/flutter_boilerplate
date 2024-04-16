#!/bin/bash

# Exit on error
set -e

create_file_if_not_exists() {
    local file=$1
    local class_name=$2
    local file_name=${file##*/}
    if [ ! -f "$file" ]; then
        cat > "$file" <<EOF
class ${feature_name_pascal}${class_name} {
  // TODO: implement $feature_name_pascal$class_name
}
EOF
        echo "Created: $file_name"
    else
        echo "File already exists: $file_name"
    fi
}

# Ask Feature Name
read -p "Enter the feature name: " feature_name
feature_name_pascal=$(echo "$feature_name" | sed -r 's/(^|_)([a-z])/\U\2/g; s/_//g')

# Dirs
script_dir="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
dir="$script_dir/lib/features/$feature_name"
constants_dir="$dir/constants"
models_dir="$dir/models"
providers_dir="$dir/providers"
repositories_dir="$dir/repositories"
services_dir="$dir/services"
views_screens_dir="$dir/views/screens"
views_widgets_dir="$dir/views/widgets"

# Create Dirs
mkdir -p "$dir"
mkdir -p "$constants_dir"
mkdir -p "$models_dir"
mkdir -p "$providers_dir"
mkdir -p "$repositories_dir"
mkdir -p "$services_dir"
mkdir -p "$views_screens_dir"
mkdir -p "$views_widgets_dir"

# Create Files if not exists
constants_file="$constants_dir/${feature_name}_constants.dart"
models_file="$models_dir/${feature_name}_models.dart"
providers_file="$providers_dir/${feature_name}_providers.dart"
repositories_file="$repositories_dir/${feature_name}_repositories.dart"
services_file="$services_dir/${feature_name}_services.dart"
views_screens_file="$views_screens_dir/${feature_name}_screens.dart"
views_widgets_file="$views_widgets_dir/${feature_name}_widgets.dart"

create_file_if_not_exists "$constants_file" "Constant"
create_file_if_not_exists "$models_file" "Model"
create_file_if_not_exists "$providers_file" "Provider"
create_file_if_not_exists "$repositories_file" "Repository"
create_file_if_not_exists "$services_file" "Service"
create_file_if_not_exists "$views_screens_file" "Screen"
create_file_if_not_exists "$views_widgets_file" "Widget"

echo "Feature Generated!"
