FROM brunneis/python:3.8.3-ubuntu-20.04
LABEL образ scanner Модуль 7
WORKDIR /server
COPY . /server

# с помощью pip установить библ. из requirements
RUN pip install -r requirements.txt
# Настраиваем команду, которая должна быть запущена в контейнере во время его выполнения
CMD ["python", "./scanner_for_linux.py"]
# Открываем порты
EXPOSE 3000
POSE 3000



