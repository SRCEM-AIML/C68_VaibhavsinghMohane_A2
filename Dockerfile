FROM python:3.10

WORKDIR /app

COPY . /app

WORKDIR /app/StudentProject

RUN pip install --no-cache-dir -r /app/requirements.txt

EXPOSE 8000

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]