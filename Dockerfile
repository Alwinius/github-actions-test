FROM python:3-alpine
WORKDIR /app
COPY requirements.txt ./
RUN pip install -r requirements.txt
COPY . /app
EXPOSE 8080
CMD [ "python", "run.py" ]