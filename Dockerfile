FROM mydrivebot5/testfile:v5ubuntu

WORKDIR /usr/src/app
RUN chmod 777 /usr/src/app
RUN curl -o /usr/src/app/requirements.txt https://gist.githubusercontent.com/yopremium21/54612dec29a3de15a689d4ed20a654b8/raw/requirements.txt 
RUN curl -o /usr/src/app/config.env https://gist.githubusercontent.com/yopremium21/8b4ec3fd67e6aabe9dd38782976fd451/raw/config.env

RUN pip3 install --no-cache-dir -r requirements.txt

COPY . .

CMD ["bash", "start.sh"]
