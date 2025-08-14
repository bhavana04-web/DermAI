#!/bin/bash

echo "🏥 DermAI - Installation Script"
echo "================================"
echo ""

# Check if Node.js is installed
if ! command -v node &> /dev/null; then
    echo "❌ Node.js is not installed. Please install Node.js first."
    echo "   Download from: https://nodejs.org/"
    exit 1
fi

# Check if npm is installed
if ! command -v npm &> /dev/null; then
    echo "❌ npm is not installed. Please install npm first."
    exit 1
fi

echo "✅ Node.js and npm are installed"
echo ""

# Step 1: Install frontend dependencies
echo "📦 Step 1: Installing frontend dependencies..."
npm install
if [ $? -ne 0 ]; then
    echo "❌ Error installing frontend dependencies"
    exit 1
fi
echo "✅ Frontend dependencies installed"
echo ""

# Step 2: Install backend dependencies
echo "📦 Step 2: Installing backend dependencies..."
cd src/Server
npm install
if [ $? -ne 0 ]; then
    echo "❌ Error installing backend dependencies"
    exit 1
fi
cd ../..
echo "✅ Backend dependencies installed"
echo ""

# Step 3: Check MongoDB
echo "🔍 Step 3: Checking MongoDB..."
if command -v mongod &> /dev/null; then
    echo "✅ MongoDB is installed"
    echo "💡 Make sure MongoDB is running:"
    echo "   - macOS: brew services start mongodb-community"
    echo "   - Linux: sudo systemctl start mongod"
    echo "   - Or run: mongod"
else
    echo "⚠️  MongoDB not found. Please install MongoDB:"
    echo "   - macOS: brew install mongodb-community"
    echo "   - Linux: sudo apt-get install mongodb"
    echo "   - Or download from: https://www.mongodb.com/try/download/community"
fi
echo ""

# Step 4: Start instructions
echo "🚀 Installation Complete!"
echo ""
echo "To start the application:"
echo ""
echo "1. Start MongoDB (if not already running)"
echo "2. Start the backend server:"
echo "   cd src/Server && npm run dev"
echo ""
echo "3. In a new terminal, start the frontend:"
echo "   npm run dev"
echo ""
echo "The application will be available at:"
echo "   Frontend: http://localhost:5173"
echo "   Backend:  http://localhost:5000"
echo ""
echo "Happy coding! 🎉"
