LOCAL_DIR=$(
    cd $(dirname $0)
    pwd
)
PROJECT_DIR=$LOCAL_DIR/../../..
source $PROJECT_DIR/scripts/properties.sh
flutter build macos \
    --dart-define=VERSION=$VERSION \
    --dart-define=VERSION_CODE=$VERSION_CODE \
    -t lib/main_personal.dart
