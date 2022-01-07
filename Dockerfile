FROM python:3.9.9-bullseye

COPY requirements.txt /root/requirements.txt
RUN pip install pip --upgrade
RUN pip install -r /root/requirements.txt

COPY clearml-client.conf /root/clearml.conf
RUN clearml-init --file /root/clearml.conf
ENV CLEARML_CONFIG_FILE=/root/clearml.conf

CMD ["python3"]