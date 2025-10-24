# todoX

RUN: docker build -t nhoxbin/todox-app . && docker run -dp 8080:5001 nhoxbin/todox-app

OR: docker compose -f compose.dev.yaml up --build -d
