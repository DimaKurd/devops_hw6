FROM python:3.10-alpine

WORKDIR /app

COPY img ./img
COPY index_page.html favicon.ico ./
COPY check_host.sh .

RUN chmod 744 ./check_host.sh && ./check_host.sh
RUN apk --no-cache add curl

USER 1001

CMD ["python", "-m", "http.server", "8000"]
