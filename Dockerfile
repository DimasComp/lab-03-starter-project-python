FROM python:3.10-slim
WORKDIR /app
RUN python -m venv .venv
COPY requirements requirements
RUN .venv/bin/pip install -r requirements/backend.txt
COPY . .

CMD [".venv/bin/python", "-m", "uvicorn", "spaceship.main:app", "--host=0.0.0.0", "--port=8080"]