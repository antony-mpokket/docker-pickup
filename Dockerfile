FROM tiangolo/uwsgi-nginx-flask:python3.8-alpine
RUN apk --update add bash nano
ENV STATIC_URL /static
ENV STATIC_PATH /Personalspace/docker/pickUp/app/static
COPY ./requirements.txt /Personalspace/docker/pickUp/requirements.txt
RUN pip install -r /Personalspace/docker/pickUp/requirements.txt
# EXPOSE  56733