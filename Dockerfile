FROM python:3.9.9-bullseye

COPY requirements.txt /root/requirements.txt
RUN pip install pip --upgrade
RUN pip install -r /root/requirements.txt

CMD ["python3"]