# 🚀 Complete Deployment Guide for Campus Event App

## 📋 Prerequisites
- GitHub account
- Vercel account (free tier available)
- Node.js installed locally (for testing)

## 🔧 Current Status
✅ Frontend dependencies installed  
✅ Backend dependencies installed  
✅ Frontend builds successfully  
✅ Vercel configuration files ready  

## 📁 Project Structure
```
Assessment-main/
├── frontend/          # React application
├── backend/           # Node.js/Express API
└── COMPLETE_DEPLOYMENT_GUIDE.md
```

## 🎯 Step-by-Step Deployment

### Step 1: Prepare GitHub Repository

1. **Create a new repository on GitHub:**
   - Go to [github.com](https://github.com)
   - Click "New repository"
   - Name: `campus-event-app` (or your preferred name)
   - Make it Public or Private (your choice)
   - Don't initialize with README (we already have one)

2. **Push your code to GitHub:**
   ```bash
   git init
   git add .
   git commit -m "Initial commit: Campus Event App"
   git branch -M main
   git remote add origin https://github.com/YOUR_USERNAME/campus-event-app.git
   git push -u origin main
   ```

### Step 2: Deploy Backend to Vercel

1. **Go to [vercel.com](https://vercel.com) and sign in**

2. **Import your GitHub repository:**
   - Click "New Project"
   - Import Git Repository
   - Select your `campus-event-app` repository

3. **Configure Backend Deployment:**
   - **Framework Preset:** Node.js
   - **Root Directory:** `backend`
   - **Build Command:** `npm install`
   - **Output Directory:** Leave empty
   - **Install Command:** `npm install`
   - **Dev Command:** `npm start`

4. **Set Environment Variables:**
   - Click "Environment Variables"
   - Add the following:
     ```
     MONGODB_URI=your_mongodb_connection_string
     JWT_SECRET=your_jwt_secret_key
     NODE_ENV=production
     ```

5. **Deploy Backend:**
   - Click "Deploy"
   - Wait for deployment to complete
   - Note the backend URL (e.g., `https://your-app.vercel.app`)

### Step 3: Deploy Frontend to Vercel

1. **Create another Vercel project for frontend:**
   - Click "New Project" again
   - Import the same repository

2. **Configure Frontend Deployment:**
   - **Framework Preset:** Create React App
   - **Root Directory:** `frontend`
   - **Build Command:** `npm run build`
   - **Output Directory:** `build`
   - **Install Command:** `npm install`
   - **Dev Command:** `npm start`

3. **Set Environment Variables:**
   - Click "Environment Variables"
   - Add:
     ```
     REACT_APP_API_URL=https://your-backend-url.vercel.app
     ```
   - Replace `your-backend-url` with your actual backend URL from Step 2

4. **Deploy Frontend:**
   - Click "Deploy"
   - Wait for deployment to complete
   - Note the frontend URL

### Step 4: Update Backend CORS (if needed)

If you encounter CORS issues, update your backend CORS configuration in `server.js`:

```javascript
app.use(cors({
  origin: ['https://your-frontend-url.vercel.app', 'http://localhost:3000'],
  credentials: true
}));
```

### Step 5: Test Your Deployment

1. **Test Backend:**
   - Visit: `https://your-backend-url.vercel.app/api/health`
   - Should return a response

2. **Test Frontend:**
   - Visit your frontend URL
   - Try to register/login
   - Check browser console for any errors

## 🔍 Troubleshooting

### Common Issues:

1. **Build Failures:**
   - Check if all dependencies are in package.json
   - Ensure Node.js version compatibility

2. **Environment Variables:**
   - Double-check variable names
   - Ensure they're set for Production environment

3. **CORS Errors:**
   - Update backend CORS configuration
   - Check if frontend URL is allowed

4. **API Connection Issues:**
   - Verify REACT_APP_API_URL is correct
   - Check if backend is accessible

## 📱 Final URLs

After deployment, you'll have:
- **Frontend:** `https://your-frontend-name.vercel.app`
- **Backend:** `https://your-backend-name.vercel.app`

## 🎉 Success!

Your Campus Event App is now deployed and accessible worldwide!

## 📞 Support

If you encounter issues:
1. Check Vercel deployment logs
2. Verify environment variables
3. Test locally first
4. Check browser console for errors

---

**Happy Deploying! 🚀** 