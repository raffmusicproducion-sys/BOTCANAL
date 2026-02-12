# Escolhe Python 3.11
FROM python:3.11-slim

# Diretório do app
WORKDIR /app

# Copia requirements e instala
COPY requirements.txt .
RUN pip install --no-cache-dir --upgrade pip setuptools wheel
RUN pip install --no-cache-dir -r requirements.txt

# Copia o código
COPY . .

# Variáveis de ambiente (serão definidas no Fly)
ENV BOT_TOKEN=""
ENV GROQ_API_KEY=""

# Comando para rodar o bot
CMD ["python", "main.py"]
