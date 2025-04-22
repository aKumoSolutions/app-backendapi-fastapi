from pydantic import BaseModel
from typing import Optional

class Token(BaseModel):
    access_token: str
    token_type: str

class TokenData(BaseModel):
    email: str | None = None

class User(BaseModel):
    id: int
    email: str
    name: str
    disabled: bool | None = None

class UserInDB(User):
    password: str

class UserCreate(BaseModel):
    email: str
    name: str
    password: str
    disabled: Optional[bool] = None

class LoginRequest(BaseModel):
    email: str
    password: str

class SignupRequest(BaseModel):
    email: str
    password: str
    name: str