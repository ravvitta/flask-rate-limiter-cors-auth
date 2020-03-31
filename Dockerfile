FROM python:3.7-slim
WORKDIR /home/app

COPY flask-rate-api.py /home/app/


RUN apt-get update -y &&\ 
addgroup --system app &&\
adduser --system --ingroup app --no-create-home app &&\
pip install --upgrade pip &&\
pip install flask &&\
pip install Flask-Limiter &&\
pip install flask-cors



USER app
EXPOSE 5000
ENTRYPOINT ["python"]
CMD ["flask-rate-api.py"]