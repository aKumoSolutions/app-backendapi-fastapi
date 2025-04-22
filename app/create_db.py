from sqlmodel import SQLModel
from app.auth.database import engine
from app.auth.models import User

# Create the database tables
SQLModel.metadata.create_all(engine)