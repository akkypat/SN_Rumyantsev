# Shorturl

Сервис, который преоразовывает ссылку к сокращенному виду.

## Возможности сервиса

1. Возвращать по полной ссылке версию короткой ссылки
2. Перенаправлять по короткой ссылке на полную версию
3. Получать информацию о модификации короткой ссылки

## Запуск

Копируем репозиторий в докер:
```
git clone https://github.com/akkypat/SN_Rumyantsev
docker build -t shorturl:latest .

Далле из докера переносим образ на виртуальную виртуальную машину:
Для запуска
```
docker pull SN_Rumyantsev/shorturl_service:latest
```
Потом создаем том для сохранения данных:
```
docker volume create shorturl_1
```
Далее запускаем:
```
docker run -d -p 8000:80 -v shorturl_1:/app/data SN_Rumyantsev/shorturl-service
```
Перейдя по ссылке http://localhost:8000/docs можно увидеть описанные в возможностях сервиса эндопинты.