# 🚀 Keycloak on Railway (Free Tier)

[![Deploy on Railway](https://railway.app/button.svg)](https://railway.app)
[![Keycloak Version](https://img.shields.io/badge/Keycloak-24.0.4-brightgreen)](https://www.keycloak.org/)

A production-ready template for deploying Keycloak with PostgreSQL on Railway's free tier. Perfect for authentication needs in development and low-traffic production environments.

---

## 🌟 Features

- **One-Click Deployment** using Railway's button
- **Dockerized Setup** with official Keycloak image
- **External PostgreSQL** database support
- **Pre-configured Admin Console**
- **Free Tier Optimized** (512MB RAM + 1vCPU)

---

## 🛠️ Prerequisites

1. [GitHub Account](https://github.com)
2. [Railway Account](https://railway.app)
3. PostgreSQL Database (Railway/External)
4. Basic understanding of environment variables

---

## 🚀 Quick Deployment

### Option 1: One-Click Setup
1. Click the [Deploy on Railway](https://railway.app) button above
2. Connect your GitHub account
3. Add environment variables (see below)
4. Wait for deployment (~3 minutes)

### Option 2: Manual Deployment
```bash
# Clone repository
git clone https://github.com/yourusername/keycloak-railway.git
cd keycloak-railway

# Push to Railway
railway up
```

## 3. Create a New Railway Project

1. **Log in** to [Railway.app](https://railway.app/).  
2. Click on **"New Project"**.  
3. Select **"Deploy from GitHub Repo"**.  
4. Choose your repository (**keycloak-railway**).  
5. Railway will automatically detect the Dockerfile and build the image.

---

## 4. Configure Environment Variables

In your Railway project dashboard, navigate to the **"Variables"** or **"Environment"** section and add the following variables:

| Variable                  | Value                     | Description                                  |
|---------------------------|---------------------------|----------------------------------------------|
| `KEYCLOAK_ADMIN`          | `admin`                   | Admin username for Keycloak                  |
| `KEYCLOAK_ADMIN_PASSWORD` | `admin`                   | Admin password for Keycloak                  |
| `KC_DB`                   | `postgres`                | Database type for Keycloak                   |
| `KC_DB_URL_HOST`          | `centerbeam.proxy.rlwy.net` | Your external PostgreSQL host              |
| `KC_DB_URL_PORT`          | `41900`                   | Your external PostgreSQL port                |
| `KC_DB_URL_DATABASE`      | `KeyCloakDB`              | Database name for Keycloak                   |
| `KC_DB_USERNAME`          | `MovoraAdmin`             | PostgreSQL username                          |
| `KC_DB_PASSWORD`          | `M0v0r@Admin`             | PostgreSQL password                          |

> 💡 **Tip:** Railway may assign a dynamic `PORT` variable. If necessary, update your Dockerfile to bind Keycloak to that port (see Environment Variables & Configuration).

---

## 5. Redeploy & Monitor

After setting the environment variables, Railway will automatically redeploy your service. Open the **Logs** tab in Railway’s dashboard to verify:
- The Docker image builds successfully.
- Keycloak starts without errors.
- The application binds to the correct port (typically 8080).

---

## Environment Variables & Configuration 🔧

Keycloak uses these environment variables to:
- **Set up the admin account:** via `KEYCLOAK_ADMIN` and `KEYCLOAK_ADMIN_PASSWORD`.
- **Connect to PostgreSQL:** using `KC_DB_URL_HOST`, `KC_DB_URL_PORT`, `KC_DB_URL_DATABASE`, `KC_DB_USERNAME`, and `KC_DB_PASSWORD`.
- **Run in development mode:** The default command in the Dockerfile is `start-dev`.

> 🔒 **Security Note:** For production, update the default credentials to stronger, secure values.

---

## Accessing Keycloak & Administration 🔑

Once your service is up and running:
1. Railway will assign you a public URL, e.g., `https://your-keycloak-app.up.railway.app`.
2. Open the URL in your browser.
3. You should see the **Keycloak welcome page**.
4. Click on the **Admin Console** link (or navigate to `/admin`).
5. Log in using the admin credentials (`admin` / `admin` by default).

> 📌 **Reminder:** Change the default credentials when moving to a production environment!

---

## Troubleshooting & FAQs

### Database Connection Issues?
Verify that all PostgreSQL-related environment variables are correct. Ensure your external database accepts connections from Railway.

### Viewing Logs?
Use the **Logs** section in the Railway dashboard to monitor build and runtime events.

---

## Contributing 🤝

Contributions, issues, and feature requests are welcome!  
Please visit the [issues page](https://github.com/YOUR_USERNAME/keycloak-railway/issues) to get started.

---

## License 📄

This project is licensed under the [MIT License](LICENSE).

---

## Useful Links 🌐

- [Keycloak Official Website](https://www.keycloak.org/)
- [Railway.app](https://railway.app/)
- [Docker Documentation](https://docs.docker.com/)
- [PostgreSQL Documentation](https://www.postgresql.org/docs/)

---

Enjoy deploying Keycloak on Railway and feel free to reach out if you have any questions or suggestions. Happy deploying! 🚀
