# Usa imagem oficial do Python
FROM python:3.11-slim

# Define diretório de trabalho
WORKDIR /app

# Copia os arquivos do projeto
COPY . .

# Instala dependências
RUN pip install --upgrade pip && \
    pip install -r requirements.txt

# Expõe a porta (ajuste conforme o app)
EXPOSE 8000

# Comando para rodar o app (ajuste se for Flask, FastAPI, etc.)
CMD ["python", "app.py"]
