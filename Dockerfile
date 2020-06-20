FROM python:stretch

COPY . /examples
WORKDIR /examples

RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# NOTE: MIGHT NEED TO RUN A SPECIFIC VERSION OF pytest FOR THIS PROJECT
#RUN pip install pytest==4.0.2

ENTRYPOINT ["gunicorn", "-b", ":8080", "main:APP"]