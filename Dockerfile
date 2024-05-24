FROM mysterysd/wzmlx:latest
RUN apt update
RUN apt upgrade -y
RUN apt install python3 python3-pip git -y
RUN git clone https://github.com/SilentDemonSD/WZML-X
COPY . .
RUN cp config* token* WZ*
RUN cd WZ*;pip3 install --no-cache-dir -r requirements.txt
RUN cd WZ*;bash start.sh
