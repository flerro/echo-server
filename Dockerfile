FROM python:3.6-alpine

ENV PYTHONUNBUFFERED 1

COPY app.py app.py

EXPOSE 8080

CMD python echo.py -b 0.0.0.0
