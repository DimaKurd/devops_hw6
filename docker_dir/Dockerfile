FROM python:3.10-alpine

WORKDIR /app

COPY img /app/img
COPY index_page.html favicon.ico /app/

RUN <<EOF 
ip -h address > ip_a_output.txt 
apk --no-cache add curl
EOF

USER 1001

CMD ["python", "-m", "http.server", "8000"]
