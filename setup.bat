@echo off
echo ======================================
echo   FairLens - Windows Setup
echo   Google Solution Challenge 2026
echo ======================================
echo.

echo [1/4] Setting up Python backend...
cd backend
python -m venv venv
call venv\Scripts\activate
pip install -r requirements.txt -q
echo [1/4] Backend ready!

cd ..\frontend
echo [2/4] Installing React dependencies...
call npm install
echo [2/4] Frontend ready!

echo.
echo ======================================
echo   Setup complete! Now open TWO terminals:
echo.
echo   Terminal 1 (backend):
echo   cd backend
echo   venv\Scripts\activate
echo   set GEMINI_API_KEY=your_key_here
echo   python app.py
echo.
echo   Terminal 2 (frontend):
echo   cd frontend
echo   npm start
echo.
echo   Get free Gemini key: https://aistudio.google.com
echo ======================================
pause
