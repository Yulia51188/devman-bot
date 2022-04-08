# Devman_Bot

A bot is useful for [Devman](https://dvmn.org/modules/) students. It sends you notification in Telegram chat if the task is verified. 

The bot uses [Devman API](https://dvmn.org/api/docs/) and [python-telegram-bot](https://pypi.org/project/python-telegram-bot/). It supplies long polling requests with duration 100s. It sents error log to administrator's Telegram chat. If there is no connection it saves log to a file 'disconnested.log'.

## Enviroments

The script uses enviroment file with Devman and Telegram authorization data. The file '.env' in root directory must include following data:
- `DVMN_API_TOKEN`, individual token of Devman API
- `TELEGRAM_BOT_TOKEN`, Telegram bot token
- `TELEGRAM_USER_ID`, an ID of a Telegram user who get the notification
- `TELEGRAM_USER_NAME`, a name of a Telegram user who get the notification
- `TELEGRAM_ADMIN_ID`, an ID of bot administrator in Telegram to send logging notifications

## How to launch

### Run with Python

Python 3 should be already installed. Then use pip3 (or pip) to install dependencies:

```sh
pip3 install -r requirements.txt
```
The Example of launch in Ubuntu is:

```sh
$ python3 send_notification.py 
```

### Run with Docker

Install [Docker](https://docs.docker.com/get-started/), prepare enviroments in `.env` (as described above) and run command:
```sh
$ docker run -d --rm --env-file ./.env  yulya6a/dvmn_bot:latest 

```

## Project Goals

The code is written for educational purposes on online-course for web-developers dvmn.org, module [Chat Bots with Python](https://dvmn.org/modules/chat-bots/lesson/devman-bot/#review-tabs).
