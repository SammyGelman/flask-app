FROM tensorflow/tensorflow:nightly-gpu

RUN pip3 install gunicorn
RUN pip3 install pandas
RUN pip3 install flask
RUN pip3 install Flask-SQLAlchemy
RUN pip3 install protobuf==3.20.*

COPY . .
EXPOSE 5000

CMD [ "flask", "run","--host","0.0.0.0","--port","5000"]
