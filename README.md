# 🛡️ FastAPI User Authentication

A simple user authentication system built with **FastAPI**, featuring:

- JWT-based token auth (`OAuth2PasswordBearer`)
- Password hashing with **bcrypt**
- Dummy in-memory user "database"
- Protected routes

## 🚀 Getting Started

## Running the Application

## Backend on AWS EC2 (Amazon Linux 2023)

1. **Prepare the Environment**  
   Ensure you have an EC2 instance running Amazon Linux 2023 with SSH access.

2. **Run the Setup Script**  
   The repository contains a `setup.sh` script to help you install python 3.11 and pip 3.11 Run the script with the following command:

   ```bash
   bash scripts/setup.sh

3. **Install Project Dependencies**
   After running the setup script, install the necessary dependencies:

   ```bash
   pip-3.11 install -r requirements.txt

4. **Start the Production Server**
   Once the build is complete, you can start the production server:
   
   ```bash
   uvicorn main:app --host 0.0.0.0 --port 8000 --reload 



Visit: [http://127.0.0.1:8000/docs](http://127.0.0.1:8000/docs) to test the API using the Swagger UI.

## 🧪 Example Credentials

Use the following to log in:

- **Username:** `tim`
- **Password:** `password` (if you hashed it from this plain-text)

## 📂 Endpoints Overview

| Method | Endpoint          | Description              |
| ------ | ----------------- | ------------------------ |
| POST   | `/token`          | Get access token         |
| GET    | `/users/me/`      | Get current user info    |
| GET    | `/users/me/items` | Get current user’s items |

> ⚠️ This uses a fake in-memory DB — not production-ready.

## 🔒 Security Notes

- Passwords are hashed using **bcrypt**
- JWT tokens use **HS256**
- Tokens expire after **60 minutes**

## 🧠 TODO

- Replace dummy DB with real database (e.g., PostgreSQL)
- Add user registration
- Add refresh token mechanism

---

**License:** MIT  
**Author:** @copypasteninja