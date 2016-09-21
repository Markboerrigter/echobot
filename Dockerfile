FROM alpine:3.1

# Update
RUN apk add --update python build-base python-dev py-pip 
ENV LIBRARY_PATH=/lib:/usr/lib

# Install app dependencies
#RUN apt-get update && apt-get install -y python build-base python-dev py-pip 
RUN pip install click==6.6
RUN pip install Flask==0.11.1
RUN pip install itsdangerous==0.24
RUN pip install Jinja2==2.8
RUN pip install MarkupSafe==0.23
RUN pip install requests==2.11.1
RUN pip install gunicorn==19.6.0
RUN pip install Werkzeug==0.11.11

RUN touch Procfile

# Bundle app source
COPY botNew.py /botNew.py

#EXPOSE  8000
CMD ["python", "/botNew.py", "-p 8000"]
