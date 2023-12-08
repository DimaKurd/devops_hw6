FROM python:3.10-alpine

WORKDIR /app

ADD img /app/img

RUN apk --no-cache add curl

COPY index_page.html favicon.ico /app/

USER 1001

CMD ["python", "-m", "http.server", "8000"]
