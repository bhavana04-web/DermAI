# DermAI Setup Instructions

## Prerequisites
1. **Node.js** (version 16 or higher)
2. **MongoDB** (version 4.4 or higher)
3. **npm** or **yarn**

## Installation Steps

### 1. Install Frontend Dependencies
```bash
cd DermAI-main
npm install
```

### 2. Install Backend Dependencies
```bash
cd src/Server
npm install
```

### 3. Start MongoDB
Make sure MongoDB is running on your system:
- **Windows**: Start MongoDB service or run `mongod`
- **macOS**: `brew services start mongodb-community`
- **Linux**: `sudo systemctl start mongod`

### 4. Start the Backend Server
```bash
cd src/Server
npm run dev
```
The server will start on `http://localhost:5000`

### 5. Start the Frontend Application
In a new terminal:
```bash
cd DermAI-main
npm run dev
```
The frontend will start on `http://localhost:5173`

## Troubleshooting

### If you can't sign up or sign in:

1. **Check if MongoDB is running:**
   ```bash
   # Check if MongoDB is running
   mongo --eval "db.runCommand('ping')"
   ```

2. **Check if the server is running:**
   - Open `http://localhost:5000` in your browser
   - You should see a "Endpoint not found" message (this means the server is running)

3. **Check browser console for errors:**
   - Open Developer Tools (F12)
   - Look for any error messages in the Console tab

4. **Check server logs:**
   - Look at the terminal where the server is running
   - Check for any error messages

### Common Issues:

1. **MongoDB Connection Error:**
   - Make sure MongoDB is installed and running
   - The server tries to connect to `mongodb://127.0.0.1:27017/dermai`

2. **Port Already in Use:**
   - If port 5000 is busy, change the port in `server.js`
   - If port 5173 is busy, Vite will automatically use the next available port

3. **CORS Errors:**
   - The server is configured to accept requests from `http://localhost:3000` and `http://localhost:5173`

## Database Setup
The application will automatically create the necessary database and collections when you first sign up a user.

## Testing the Application
1. Go to `http://localhost:5173`
2. Click "Sign Up" to create a new account
3. Fill in your details and submit
4. You should be redirected to the profile setup page
5. Complete your profile setup
6. You can then log in with your credentials
