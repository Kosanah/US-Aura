# Custom Domain Setup for usaurasolutions.com

## GitHub Pages Configuration

Your repository is configured to use the custom domain: **usaurasolutions.com**

## DNS Configuration

To point your domain to GitHub Pages, add the following DNS records in your domain registrar (where you bought the domain):

### Option 1: Apex Domain (usaurasolutions.com)

Add these **A records**:
```
Type: A
Name: @
Value: 185.199.108.153

Type: A
Name: @
Value: 185.199.109.153

Type: A
Name: @
Value: 185.199.110.153

Type: A
Name: @
Value: 185.199.111.153
```

### Option 2: WWW Subdomain (www.usaurasolutions.com)

Add this **CNAME record**:
```
Type: CNAME
Name: www
Value: kosanah.github.io
```

## Steps to Complete Setup

1. **Add DNS Records** (at your domain registrar):
   - Log into your domain registrar (GoDaddy, Namecheap, etc.)
   - Go to DNS Management
   - Add the A records listed above
   - Add the CNAME record for www
   - Save changes (DNS propagation takes 24-48 hours)

2. **Push CNAME File to GitHub**:
   ```bash
   git add CNAME
   git commit -m "Add custom domain"
   git push origin new-feature
   ```

3. **Merge to Main Branch**:
   ```bash
   git checkout main
   git merge new-feature
   git push origin main
   ```

4. **Enable HTTPS in GitHub**:
   - Go to: https://github.com/Kosanah/US-Aura/settings/pages
   - Wait for DNS to propagate
   - Check "Enforce HTTPS"

## Verification

After DNS propagates (24-48 hours), your site will be available at:
- https://usaurasolutions.com
- https://www.usaurasolutions.com

## Troubleshooting

If your domain doesn't work after 48 hours:
1. Verify DNS records are correct using: https://dnschecker.org
2. Check GitHub Pages settings: https://github.com/Kosanah/US-Aura/settings/pages
3. Ensure CNAME file contains only: `usaurasolutions.com` (no http://, no www)
