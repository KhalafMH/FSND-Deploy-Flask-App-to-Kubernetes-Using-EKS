FROM python:stretch

COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt
EXPOSE 8080
USER 1001
ENTRYPOINT ["gunicorn", "-b", ":8080", "main:APP"]
