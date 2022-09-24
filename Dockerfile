FROM debian:buster-slim
RUN apt-get update && apt-get upgrade -y && apt-get -y install golang vim
RUN useradd --create-home --no-log-init --shell /bin/bash user
USER user
WORKDIR ~
# fake foreground process
ENTRYPOINT ["tail", "-f", "/dev/null"]
#WORKDIR /code
#ENV FLASK_APP=app.py
#ENV FLASK_RUN_HOST=0.0.0.0
#RUN apk add --no-cache gcc musl-dev linux-headers
#COPY requirements.txt requirements.txt
#RUN pip install -r requirements.txt
#EXPOSE 5000
#COPY . .
#CMD ["flask", "run"]
