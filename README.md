# 🛡️ FastAPI User Authentication

A simple user authentication system built with **FastAPI**, featuring:

- JWT-based token auth (`OAuth2PasswordBearer`)
- Password hashing with **bcrypt**
- PostgreSQL/SQLModel user database
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
   ```

3. **Install Project Dependencies**
   After running the setup script, install the necessary dependencies:

   ```bash
   pip-3.11 install -r requirements.txt
   ```

4. **Start the Production Server**
   Once the build is complete, you can start the production server:

   ```bash
   uvicorn app.main:app --host 0.0.0.0 --port 8000 --reload
   ```

Visit: [http://127.0.0.1:8000/docs](http://127.0.0.1:8000/docs) to test the API using the Swagger UI.

## 📂 Endpoints Overview

| Method | Endpoint              | Description              |
| ------ | --------------------- | ------------------------ |
| POST   | `/api/auth`           | Log in, get JWT token    |
| POST   | `/api/users`          | Register a new user      |
| POST   | `/api/logout`         | Log out (stateless)      |
| GET    | `/api/users/me/`      | Get current user info    |
| GET    | `/api/users/me/items` | Get current user's items |

## 📝 Example Requests

### Signup

```bash
curl -X POST http://localhost:8000/api/users \
  -H "Content-Type: application/json" \
  -d '{"email":"test@example.com","name":"Test User","password":"testpass"}'
```

### Login

```bash
curl -X POST http://localhost:8000/api/auth \
  -H "Content-Type: application/json" \
  -d '{"email":"test@example.com","password":"testpass"}'
```

**Login Response Example:**

```json
{
  "ok": true,
  "message": "Login successful",
  "payload": {
    "token": "<JWT>",
    "user": {
      "id": 1,
      "email": "test@example.com",
      "name": "Test User"
    }
  }
}
```

### Logout

```bash
curl -X POST http://localhost:8000/api/logout
```

## 🔒 Security Notes

- Passwords are hashed using **bcrypt**
- JWT tokens use **HS256**
- Tokens expire after **60 minutes**
- **Email** is used as the unique user identifier

## 🧠 TODO

- Add refresh token mechanism
- Add user profile update/delete
- Add email verification

---

**License:** MIT  
**Author:** @copypasteninja
