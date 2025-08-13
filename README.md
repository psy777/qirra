# Qirra - Online Multiplayer Game

Qirra is a strategic board game similar to Go, featuring both online multiplayer and offline modes. The game is built with HTML5, CSS3, and JavaScript, with Firebase integration for real-time multiplayer functionality.

## Features

- **Online Multiplayer**: Real-time gameplay with Firebase integration
- **Offline Mode**: Play locally against another player
- **Configurable Board Sizes**: Choose from 5x5 to 25x25 grids
- **Visual Customization**: Customize player colors, glow effects, and board appearance
- **Responsive Design**: Works on desktop and mobile devices
- **Anonymous Authentication**: No account creation required for online play

## Game Rules

Qirra follows similar rules to Go:
- Players take turns placing stones on the board
- Capture opponent stones by surrounding them
- Suicide moves (placing a stone with no liberties) are not allowed
- Ko rule prevents immediate recapture of stones
- Game ends when both players pass consecutively
- Player with the most captured stones wins

## Getting Started

### Quick Start (Local Play)
1. Open `index.html` in a web browser
2. Click "Play Offline" to start a local game
3. Adjust board size using the slider if desired

### Online Multiplayer Setup
To enable online multiplayer, you need to configure Firebase:

1. **Create a Firebase Project**
   - Go to [Firebase Console](https://console.firebase.google.com/)
   - Create a new project
   - Enable Authentication (Anonymous sign-in)
   - Enable Firestore Database
   - Enable Realtime Database

2. **Configure the Game**
   - Copy `.env.example` to `.env`
   - Fill in your Firebase configuration values
   - See `firebase-setup.md` for detailed instructions

3. **Serve the Game**
   ```bash
   # Using Python
   python -m http.server 8000
   
   # Using Node.js
   npx http-server
   
   # Using PHP
   php -S localhost:8000
   ```

4. **Play Online**
   - Open the game in your browser
   - Click "Find Match" to join the matchmaking queue
   - Use match codes to play with specific friends

## File Structure

```
qirra-game/
├── index.html          # Main game file
├── .env.example        # Firebase configuration template
├── .gitignore         # Git ignore rules
├── firebase-setup.md  # Detailed Firebase setup guide
└── README.md          # This file
```

## Configuration Options

### Environment Variables
- `FIREBASE_API_KEY`: Your Firebase API key
- `FIREBASE_AUTH_DOMAIN`: Your Firebase auth domain
- `FIREBASE_DATABASE_URL`: Your Firebase Realtime Database URL
- `FIREBASE_PROJECT_ID`: Your Firebase project ID
- `FIREBASE_STORAGE_BUCKET`: Your Firebase storage bucket
- `FIREBASE_MESSAGING_SENDER_ID`: Your Firebase messaging sender ID
- `FIREBASE_APP_ID`: Your Firebase app ID

### Game Settings
- **Board Size**: Adjustable from 5x5 to 25x25
- **Player Colors**: Customizable stone colors and glow effects
- **Board Theme**: Adjustable board and cell colors
- **Match Codes**: Optional codes for private matches

## Development

### Local Development
1. Clone the repository
2. Set up Firebase configuration (see `firebase-setup.md`)
3. Serve the files using a local web server
4. Open `http://localhost:8000` in your browser

### Security Considerations
- The `.env` file is ignored by Git to protect credentials
- Use Firebase security rules for production deployments
- Consider implementing rate limiting for matchmaking

## Browser Compatibility

- Chrome 60+
- Firefox 55+
- Safari 12+
- Edge 79+

## Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Test thoroughly
5. Submit a pull request

## License

This project is open source. Feel free to use, modify, and distribute as needed.

## Support

For issues or questions:
1. Check the `firebase-setup.md` for configuration help
2. Ensure you're serving the files from a web server (not opening directly)
3. Check browser console for error messages
4. Verify Firebase configuration is correct

## Acknowledgments

- Built with Firebase for real-time multiplayer functionality
- Uses Tailwind CSS for styling
- Inspired by the ancient game of Go
