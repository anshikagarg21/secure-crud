from sqlalchemy import create_engine
from sqlalchemy.orm import sessionmaker, declarative_base
import os

POSTGRES_USER = os.getenv("POSTGRES_USER", "postgres")
POSTGRES_PASSWORD = os.getenv("POSTGRES_PASSWORD", "postgres")
POSTGRES_DB = os.getenv("POSTGRES_DB", "securecrud")
POSTGRES_HOST = os.getenv("POSTGRES_HOST", "db")

DATABASE_URL = (
    f"postgresql://{POSTGRES_USER}:{POSTGRES_PASSWORD}"
    f"@{POSTGRES_HOST}:5432/{POSTGRES_DB}"
)

engine = create_engine(DATABASE_URL)
SessionLocal = sessionmaker(bind=engine)
Base = declarative_base()
