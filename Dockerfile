FROM python:3.7.3-stretch
RUN mkdir -p /Project
WORKDIR /Project
COPY . /Project
RUN pip install --upgrade pip
RUN pip install -r requirements.txt
EXPOSE 80
CMD python ./app.py
