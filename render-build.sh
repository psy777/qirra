#!/usr/bin/env bash
# Exit on error
set -o errexit

# Create the firebase-config.js file from environment variables
cat > firebase-config.js << EOL
export const firebaseConfig = {
  apiKey: "${FIREBASE_API_KEY}",
  authDomain: "${FIREBASE_AUTH_DOMAIN}",
  databaseURL: "${FIREBASE_DATABASE_URL}",
  projectId: "${FIREBASE_PROJECT_ID}",
  storageBucket: "${FIREBASE_STORAGE_BUCKET}",
  messagingSenderId: "${FIREBASE_MESSAGING_SENDER_ID}",
  appId: "${FIREBASE_APP_ID}"
};
EOL

echo "firebase-config.js created successfully."
