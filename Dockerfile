# Використовуємо базовий образ Python 3.9
FROM python:3.9-slim

# Встановлюємо робочу директорію
WORKDIR /app

# Копіюємо файл з вимогами
COPY requirements.txt .

# Оновлюємо pip
RUN pip install --upgrade pip

# Встановлюємо залежності
RUN pip install --no-cache-dir -r requirements.txt

# Копіюємо усі файли в контейнер
COPY . .

# Відкриваємо порт 3000
EXPOSE 80

# Команда для запуску серверу
CMD ["python", "app.py"]
