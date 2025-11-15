# 🌐 DNS Setup Guide for www.usaurasolutions.com

## ✅ Current Status
- Domain: **www.usaurasolutions.com**
- GitHub Pages: **kosanah.github.io/US-Aura/**
- CNAME file: ✅ Already configured

---

## 🔧 DNS Changes Required

### In Your Domain Registrar (Where you bought the domain):

**You need to UPDATE the existing CNAME record for "kosanah.github.io"**

### Current (WRONG):
```
Type: CNAME
Name: kosanah.github.io
Value: www
```

### Change to (CORRECT):
```
Type: CNAME
Name: www
Value: kosanah.github.io
```

**The problem:** Your CNAME is backwards! It should point FROM "www" TO "kosanah.github.io"

---

## 📋 Step-by-Step Instructions

### Step 1: In Your Domain DNS Settings

1. **Find the CNAME record** with Name: `kosanah.github.io`
2. **Click Edit** (the three dots menu)
3. **Change it to:**
   - **Type:** CNAME
   - **Name:** www
   - **Value/Points to:** kosanah.github.io
   - **TTL:** Automatic or 1 Hour

4. **Save the changes**

### Step 2: Add Apex Domain (Optional but Recommended)

For users who type just "usaurasolutions.com" (without www):

**Add these 4 A Records:**
```
Type: A
Name: @
Value: 185.199.108.153
TTL: 1 Hour

Type: A
Name: @
Value: 185.199.109.153
TTL: 1 Hour

Type: A
Name: @
Value: 185.199.110.153
TTL: 1 Hour

Type: A
Name: @
Value: 185.199.111.153
TTL: 1 Hour
```

**Note:** I see you already have A records, but they point to:
- 185.199.110.153 ✅ (correct)
- 185.199.109.153 ✅ (correct)  
- 185.199.108.153 ✅ (correct)

You're just missing one: **185.199.111.153**

---

## Step 3: Enable Custom Domain in GitHub

1. Go to: https://github.com/Kosanah/US-Aura/settings/pages
2. Under **"Custom domain"**, enter: `www.usaurasolutions.com`
3. Click **Save**
4. Wait for DNS check (may take a few minutes)
5. Check **"Enforce HTTPS"** (appears after DNS propagates)

---

## ⏱️ DNS Propagation Time

- **Minimum:** 15 minutes to 1 hour
- **Maximum:** 24-48 hours (rarely)
- **Your TTL is set to:** 15 minutes - 2 hours (good!)

---

## ✅ How to Test

After making changes, wait 15-30 minutes, then:

1. **Visit:** https://www.usaurasolutions.com
2. **Your website should load!**

### Check DNS propagation:
- Visit: https://dnschecker.org
- Enter: www.usaurasolutions.com
- Should show: kosanah.github.io

---

## 📧 Email Setup (Already Configured)

Your email DNS looks good:
- ✅ MX records (4 mail servers)
- ✅ TXT/SPF records for email authentication
- ✅ SMTP, POP, IMAP CNAME records

No changes needed for email!

---

## 🚨 Common Issues

### Issue 1: Website shows 404
**Solution:** Wait longer (DNS propagation takes time)

### Issue 2: "Domain already taken"
**Solution:** Make sure CNAME file contains only: `www.usaurasolutions.com`

### Issue 3: HTTPS not working
**Solution:** Wait for DNS to propagate, then enable "Enforce HTTPS" in GitHub settings

---

## 🎯 Summary of Changes Needed

1. ✅ **CNAME file in repo** - Already done
2. ⚠️ **Fix CNAME record in DNS** - Change Name from "kosanah.github.io" to "www", Value to "kosanah.github.io"  
3. ➕ **Add missing A record** - Add 185.199.111.153
4. ⚙️ **Configure GitHub Pages** - Add custom domain in settings
5. ⏱️ **Wait** - 15-30 minutes for DNS propagation

---

## 📞 Next Steps

After you fix the CNAME record:
1. I'll push the CNAME file to GitHub
2. You configure the custom domain in GitHub Pages settings
3. Wait for DNS to propagate
4. Your site will be live at www.usaurasolutions.com!
