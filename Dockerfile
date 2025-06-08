FROM python:3.11-slim

WORKDIR /app

# Instala dependências do sistema para o OpenCV
RUN apt-get update && apt-get install -y \
    libgl1 \
    libglib2.0-0 \
    && rm -rf /var/lib/apt/lists/*

# Copia o projeto
COPY . .

# Instala dependências do Python
RUN pip install --upgrade pip && \
    pip install -r requirements.txt

EXPOSE 8000

CMD ["python", "app.py"]
