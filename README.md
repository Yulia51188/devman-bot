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

### Launch

- Install [Docker](https://docs.docker.com/get-started/)
- Set enviroments in `.env` (as described above)
- Run command to run Docker container based on initial image:

```sh
$ docker run -d --rm --env-file ./.env  yulya6a/dvmn_bot:latest 

```

### Development with Docker

If you changed some code, you need to rebuild image and run a new container with following steps:
- Install [Docker](https://docs.docker.com/get-started/)
- Build a new image with command:


  - You should run command from project directory!
  - Put your DockerHub username instead of `yulya6a`.
  - Set your image name instead of `devman_bot` if you want.

```sh
$ docker build -t yulya6a/devman_bot .
```

- Stop the older version of container if there is one:
  - Put your container ID instead of `happy_moore`. You can find it in `docker ps` output.
   
```sh
$ docker ps
$ docker rm -f happy_moore
```

- Run a new container:
  - Set your image name and username instead of `yulya6a/dvmn_bot` if you have changed it.

```sh
$ docker run -d --rm --env-file ./.env  yulya6a/devman_bot 
```

- Push an image to DockerHub:
  - Set your image name and username instead of `yulya6a/dvmn_bot` if you have changed it.
 
```sh
$ docker push yulya6a/devman_bot
```

## Project Goals

The code is written for educational purposes on online-course for web-developers dvmn.org, module [Chat Bots with Python](https://dvmn.org/modules/chat-bots/lesson/devman-bot/#review-tabs).
