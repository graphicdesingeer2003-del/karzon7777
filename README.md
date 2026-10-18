Karzon Telegram Bot

Python 3.12+. Install: pip install -r requirements.txt
Start: python main.py
Check: python main.py --check

Set environment variables using .env.example. Never upload your .env or database to GitHub.
For Railway: deploy this folder with Dockerfile, set BOT_TOKEN and other variables, attach a persistent volume at /data.
Keep existing database and credentials when updating. Only one bot instance should poll Telegram.

All games and virtual gifts are free. /fun shows the creative games menu.
/battle /emoji /story /choice /mission /gift /couple /joke /bite /toast
Existing marriages, users and licenses are preserved. Coin rewards, bets and shop commands are disabled.
Language is Russian by default; only the owner can change it with /language.
Automatic replies to bot messages remain available. Group inactivity moderation uses /inactive.

Daily group questions: enabled in the primary group at 19:00 Asia/Yerevan.
/daily on | off | status | time 20:30 (group admins only).
30 rotating prompts, one per day; missed windows are skipped. Bot must be running.

YouTube music: /music for help. /song sends MP3; /play plays in voice chat.
See MUSIC_SETUP.md for the required voice-account setup.

Admin dashboard: /admin or /control. Categorized command reference, group protection, daily questions, music controls, activity and event history.
Group admins control their current group. The owner/global admin can control PRIMARY_CHAT_ID in private. Language controls are owner-only.
