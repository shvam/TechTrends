FROM python:2.7
LABEL maintainer="Shivam"
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt
# Command to run on container start
CMD ["python","init_db.py"]
CMD ["python","app.py","--port=3111"]
