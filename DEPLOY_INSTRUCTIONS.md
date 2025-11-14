# 🚀 Deploy to GitHub Pages

Your website is now ready to host on GitHub Pages! Follow these steps:

## Step 1: Create GitHub Repository

1. Go to [GitHub](https://github.com) and login
2. Click the **"+"** icon (top right) → **"New repository"**
3. Repository name: `usaura-solutions` (or any name you prefer)
4. Keep it **Public**
5. Do **NOT** initialize with README
6. Click **"Create repository"**

## Step 2: Push Your Code

After creating the repository, run these commands in PowerShell:

```powershell
cd "c:\Project 2\US Aura Solutions"

# Add your GitHub repository (replace YOUR_USERNAME with your GitHub username)
git remote add origin https://github.com/YOUR_USERNAME/usaura-solutions.git

# Push to GitHub
git branch -M main
git push -u origin main
```

## Step 3: Enable GitHub Pages

1. Go to your repository on GitHub
2. Click **"Settings"** tab
3. Scroll down to **"Pages"** in the left sidebar
4. Under **"Source"**, select **"main"** branch
5. Click **"Save"**
6. Wait 1-2 minutes

Your website will be live at:
```
https://YOUR_USERNAME.github.io/usaura-solutions/
```

## ✅ What's Been Done

- ✅ Combined HTML, CSS, and JavaScript into single `index.html`
- ✅ Logo included in `images/` folder
- ✅ Git repository initialized
- ✅ Initial commit created
- ✅ Ready to push to GitHub

## 🎨 Features Included

- Cool tech-inspired backgrounds
- Professional client reviews (4 companies)
- Cooler color scheme (violet-blue + cyan)
- Custom cursor effects
- Parallax animations
- Responsive design
- All 5 services showcased
- Industries section
- Contact form
- Professional footer

---

**Note:** Make sure to replace `YOUR_USERNAME` with your actual GitHub username in the commands above!
