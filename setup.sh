#!/bin/bash

echo ""
echo "======================================"
echo "  FairLens - Setup Script"
echo "  Google Solution Challenge 2026"
echo "======================================"
echo ""

# ── BACKEND SETUP ──────────────────────────────────────────
echo "[1/4] Setting up Python backend..."
cd backend

python3 -m venv venv
if [ $? -ne 0 ]; then
  echo "ERROR: Python 3 not found. Install from python.org"
  exit 1
fi

source venv/bin/activate
pip install -r requirements.txt -q

if [ -z "$GEMINI_API_KEY" ]; then
  echo ""
  echo ">>> Enter your Gemini API Key (free at https://aistudio.google.com):"
  read -r key
  export GEMINI_API_KEY="$key"
  echo "GEMINI_API_KEY=$key" >> .env
fi

echo "[1/4] Backend ready!"

# ── FRONTEND SETUP ─────────────────────────────────────────
cd ../frontend
echo "[2/4] Installing React dependencies (may take 2-3 minutes)..."
npm install -q
echo "[2/4] Frontend ready!"

echo ""
echo "======================================"
echo "  Setup complete! Now run:"
echo ""
echo "  Terminal 1 (backend):"
echo "  cd backend && source venv/bin/activate && python app.py"
echo ""
echo "  Terminal 2 (frontend):"
echo "  cd frontend && npm start"
echo ""
echo "  Open: http://localhost:3000"
echo "======================================"
