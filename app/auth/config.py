import os
from dotenv import load_dotenv

load_dotenv()  # To load environment variables from .env file

SECRET_KEY = os.getenv("SECRET_KEY", "default-secret-key")
ALGORITHM = "HS256"
ACCESS_TOKEN_EXPIRE_MINUTES = 60