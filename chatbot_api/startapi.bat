@echo off

REM Go to project folder
cd /d %~dp0

REM Check if virtual environment exists
if not exist .venv (
    echo Creating virtual environment...
    python -m venv .venv
)

REM Activate virtual environment
call .venv\Scripts\activate

REM Upgrade pip
python -m pip install --upgrade pip

REM Install requirements
if exist requirements.txt (
    python -m pip install -r requirements.txt
) else (
    echo requirements.txt not found!
    pause
    exit /b
)

REM Run migrations
python manage.py migrate

REM Open browser
start http://127.0.0.1:8000/chatbot_api/

REM Run Django server
python manage.py runserver 127.0.0.1:8000

pause