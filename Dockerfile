FROM python:3.12-slim
ENV PYTHONUNBUFFERED=1 PYTHONDONTWRITEBYTECODE=1 DB_PATH=/data/karzoni_bot.db
WORKDIR /app
RUN apt-get update && apt-get install -y --no-install-recommends ffmpeg libstdc++6 libgomp1 && rm -rf /var/lib/apt/lists/*
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt
COPY main.py .
RUN python main.py --check && python -m yt_dlp --version && ffmpeg -version && deno --version && python -c "from telethon import TelegramClient; from pytgcalls import PyTgCalls"
RUN mkdir -p /data
CMD ["python", "main.py"]
