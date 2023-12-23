FROM python:3.10-alpine

WORKDIR /app

COPY img ./img
COPY index_page.html favicon.ico ./

RUN apk --no-cache add curl

USER 1001

CMD ["python", "-m", "http.server", "8000"]
