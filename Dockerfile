FROM python:3.7-slim

RUN apt-get update -y
RUN apt-get install -y python3-pyqt5 wget
RUN pip install PyQt5
RUN wget https://download.electrum.org/3.3.8/Electrum-3.3.8.tar.gz

RUN cd / && tar -xvf Electrum-3.3.8.tar.gz
RUN rm /Electrum-3.3.8.tar.gz
CMD ["python3","/Electrum-3.3.8/run_electrum"]
