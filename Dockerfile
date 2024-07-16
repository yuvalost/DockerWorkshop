FROM python:2.7-onbuild 
EXPOSE 5000 
WORKDIR /src/app 
COPY . .
RUN pip install -r requirements
CMD [ "python", "app.py" ]
