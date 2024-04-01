#!/bin/bash

# Check if a folder name is provided as an argument
if [ $# -eq 0 ]; then
    echo "Error: Please provide the folder name."
    exit 1
fi

# Set NODE_ENV to production
export NODE_ENV=production

PACKAGE=$1
TASK=$2

# Check if the task exists for the package
if jq -e .scripts.$TASK packages/$PACKAGE/package.json >/dev/null 2>&1; then
  # If the task exists, run it for the specific package
  echo "Running $TASK for $PACKAGE"
  npx turbo run $TASK --scope=$PACKAGE
else
  # If the task does not exist for the specific package, run the root task
  echo "$TASK does not exist for $PACKAGE. Running root $TASK."
  #npm run $TASK
  npx turbo run $TASK 
fi

# Navigate to the specified directory within the packages folder
#cd "packages/$1" || exit 1

# Test the specified package
#echo "Testing package: packages/$1"
#npx turbo test "packages/$1"

# Build the specified package
#echo "Building package: packages/$1"
#npx turbo build "packages/$1"
#npx turbo build --scope="$1"

# Install dependencies
#npm install

# Run tests
#npm test

# Run build process
#npm run build

# Start the application (if applicable)
# npm start
