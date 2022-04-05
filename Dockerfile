# syntax docker/dockerfile:1
FROM python:3.7

WORKDIR /Devman_Bot
RUN pip install --upgrade pip
COPY ./requirements.txt .
RUN pip install -r requirements.txt
COPY . .

CMD ["python", "send_notification.py"]
