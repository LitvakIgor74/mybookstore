FROM python:3.9.5

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

RUN pip install --upgrade pip
RUN pip install pipenv && pip install --upgrade pipenv

WORKDIR /mybookstore 

COPY Pipfile Pipfile.lock /mybookstore/
RUN pipenv install

COPY . /mybookstore/