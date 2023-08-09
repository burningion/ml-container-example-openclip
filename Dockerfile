FROM nvcr.io/nvidia/pytorch:23.02-py3
RUN python -m pip install --upgrade pip
COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt
RUN mkdir /app
WORKDIR /app