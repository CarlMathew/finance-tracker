from pydantic_settings import BaseSettings, SettingsConfigDict
from functools import lru_cache



class Settings(BaseSettings):
    app_name: str = "Finance Tracker System API"
    app_environment: str = "development"
    app_version: str = "0.1.0"
    database_url: str | None = None
    debug: bool = False

    api_v1_prefix: str = "/api/v1"

    model_config = SettingsConfigDict(
        env_file = ".env",
        env_file_encoding="utf-8",
        extra="ignore"
    )

@lru_cache
def get_settings() -> Settings:
    """Setup Enviroment Information and Config for the app"""
    return Settings()


settings = get_settings()