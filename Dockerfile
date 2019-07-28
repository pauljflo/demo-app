FROM pauljflo/base

RUN mkdir /code
COPY src/ /code/
COPY docker/root/ /
WORKDIR /code

RUN  chown -R nginx:nginx ./

EXPOSE 80
CMD ["sudo", "-E", "supervisord", "-n"]
