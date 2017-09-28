FROM python:2.7-onbuild 
EXPOSE 5000
RUN apt-get install redis 
ENV REDIS_HOST=localhost
COPY app.py app.py
CMD [ "service", "start", "redis",";", "python", "app.py" ]