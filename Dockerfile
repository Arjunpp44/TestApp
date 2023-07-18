FROM ubuntu:latest
RUN apt-get -y update
RUN apt install net-tools -y
RUN apt install httpd -y
RUN apt install python3 -y
COPY requirements.txt /home
RUN pip3 install -r /home/requirements.txt
COPY WEB_APP Mail_App
WORKDIR Mail_App
ENTRYPOINT ["python3", "app.py"]
EXPOSE 3000 5050

