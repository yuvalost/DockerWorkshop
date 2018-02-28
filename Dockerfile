FROM python:2.7-onbuild 
RUN apt-get install redis 
ENV REDIS_HOST=localhost
COPY app.py app.py
#CMD [ "service", "start", "redis",";", "python", "app.py" ]
EXPOSE 5000
CMD [ "python", "app.py" ]
