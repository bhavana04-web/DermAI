# 🏥 DermAI - AI-Powered Dermatology Analysis Platform

[![Node.js](https://img.shields.io/badge/Node.js-16+-green.svg)](https://nodejs.org/)
[![React](https://img.shields.io/badge/React-19.0.0-blue.svg)](https://reactjs.org/)
[![MongoDB](https://img.shields.io/badge/MongoDB-4.4+-green.svg)](https://www.mongodb.com/)
[![Express](https://img.shields.io/badge/Express-5.1.0-gray.svg)](https://expressjs.com/)

A comprehensive web application that uses AI to analyze skin lesions and provide dermatological insights. Built with React, Node.js, and MongoDB.

## ✨ Features

- 🔬 **AI-Powered Analysis**: Analyze skin lesions using machine learning models
- 👤 **User Authentication**: Secure signup/login system with profile management
- 📊 **Analysis History**: Track and review past skin analyses
- 🏥 **Doctor Panel**: Healthcare professionals can manage patient records
- 📱 **Responsive Design**: Works seamlessly on desktop and mobile devices
- 🔒 **Secure File Upload**: PDF document management for patient records
- 📈 **Real-time Results**: Instant analysis results with detailed insights

## 🚀 Quick Start

### Prerequisites

- **Node.js** (version 16 or higher)
- **MongoDB** (version 4.4 or higher)
- **npm** or **yarn**

### Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/yourusername/DermAI.git
   cd DermAI
   ```

2. **Install Frontend Dependencies**
   ```bash
   npm install
   ```

3. **Install Backend Dependencies**
   ```bash
   cd src/Server
   npm install
   cd ../..
   ```

4. **Start MongoDB**
   - **Windows**: Start MongoDB service or run `mongod`
   - **macOS**: `brew services start mongodb-community`
   - **Linux**: `sudo systemctl start mongod`

5. **Start the Backend Server**
   ```bash
   cd src/Server
   npm run dev
   ```
   The server will start on `http://localhost:5000`

6. **Start the Frontend Application** (in a new terminal)
   ```bash
   npm run dev
   ```
   The frontend will start on `http://localhost:5173`

### 🎯 One-Click Setup (Windows)

For Windows users, you can use the provided scripts:

- **PowerShell**: Double-click `start-app.ps1`
- **Command Prompt**: Double-click `start-app.bat`

These scripts will automatically install dependencies and start both servers.

## 🏗️ Project Structure

```
DermAI/
├── src/
│   ├── components/          # React components
│   │   ├── Login.jsx       # Authentication
│   │   ├── Signup.jsx      # User registration
│   │   ├── Profile.jsx     # User profile
│   │   ├── Analyze.jsx     # Skin analysis
│   │   └── ...
│   ├── pages/              # Page components
│   ├── Server/             # Backend server
│   │   ├── server.js       # Express server
│   │   ├── package.json    # Server dependencies
│   │   └── uploads/        # File uploads
│   └── hooks/              # Custom React hooks
├── public/                 # Static assets
├── package.json           # Frontend dependencies
└── README.md             # This file
```

## 🔧 Technology Stack

### Frontend
- **React 19** - Modern UI framework
- **Vite** - Fast build tool
- **Tailwind CSS** - Utility-first CSS framework
- **Axios** - HTTP client
- **React Router** - Client-side routing
- **React Hot Toast** - Notifications

### Backend
- **Node.js** - JavaScript runtime
- **Express.js** - Web framework
- **MongoDB** - NoSQL database
- **Mongoose** - MongoDB ODM
- **Multer** - File upload handling
- **CORS** - Cross-origin resource sharing

### AI/ML
- **Teachable Machine** - Custom ML models
- **TensorFlow.js** - Machine learning library

## 📊 API Endpoints

### Authentication
- `POST /signup` - User registration
- `POST /login` - User authentication
- `POST /profile-setup` - Complete user profile

### Analysis
- `POST /save-analysis` - Save skin analysis results
- `GET /api/analyses/:userId` - Get user's analysis history
- `GET /api/analyses/single/:id` - Get specific analysis

### Doctor Panel
- `GET /api/doctor/search` - Search patients
- `POST /api/doctor/upload` - Upload patient documents
- `GET /api/doctor/documents/:userId` - Get patient documents
- `DELETE /api/doctor/documents/:id` - Delete documents

## 🎨 Features in Detail

### 🔬 Skin Analysis
- Upload skin lesion images
- AI-powered classification of skin conditions
- Detailed analysis reports with confidence scores
- Support for multiple lesion types (Melanoma, Basal Cell Carcinoma, etc.)

### 👤 User Management
- Secure user registration and login
- Profile customization with age and location
- Analysis history tracking
- Personal dashboard

### 🏥 Doctor Panel
- Patient search and management
- Document upload and organization
- Analysis review and management
- Professional healthcare interface

## 🛠️ Development

### Running in Development Mode
```bash
# Frontend (with hot reload)
npm run dev

# Backend (with nodemon)
cd src/Server
npm run dev
```

### Building for Production
```bash
# Build frontend
npm run build

# Start production server
cd src/Server
npm start
```

## 🔍 Troubleshooting

### Common Issues

1. **MongoDB Connection Error**
   - Ensure MongoDB is installed and running
   - Check if the service is started on port 27017

2. **Port Already in Use**
   - Frontend: Vite will automatically use the next available port
   - Backend: Change the port in `src/Server/server.js`

3. **CORS Errors**
   - The server is configured for `localhost:3000` and `localhost:5173`
   - Check browser console for specific error messages

4. **Module Not Found Errors**
   - Run `npm install` in both root and `src/Server` directories
   - Clear `node_modules` and reinstall if necessary

### Getting Help

1. Check the browser console (F12) for error messages
2. Review server logs in the terminal
3. Ensure all dependencies are installed
4. Verify MongoDB is running

## 🤝 Contributing

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## 📝 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🙏 Acknowledgments

- [Teachable Machine](https://teachablemachine.withgoogle.com/) for ML model training
- [React](https://reactjs.org/) for the frontend framework
- [Express.js](https://expressjs.com/) for the backend framework
- [MongoDB](https://www.mongodb.com/) for the database

## 📞 Support

If you encounter any issues or have questions:

1. Check the [Troubleshooting](#troubleshooting) section
2. Review the [SETUP_INSTRUCTIONS.md](SETUP_INSTRUCTIONS.md) file
3. Open an issue on GitHub
4. Contact the development team

---

**Note**: This application is for educational and research purposes. For medical diagnosis, always consult with qualified healthcare professionals.
