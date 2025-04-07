# 🛡️ FastAPI User Authentication

A simple user authentication system built with **FastAPI**, featuring:

- JWT-based token auth (`OAuth2PasswordBearer`)
- Password hashing with **bcrypt**
- Dummy in-memory user "database"
- Protected routes

## 🚀 Getting Started

### Prerequisites

Make sure you have:

- Python 3.8+
- `pip` installed

### Install Dependencies

```bash
pip install fastapi uvicorn python-jose passlib[bcrypt]
```

### Run the App

```bash
uvicorn main:app --reload
```

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
