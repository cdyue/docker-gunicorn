FROM python:2.7

RUN pip install gunicorn==19.4.5 \
  && rm -r $HOME/.cache

COPY /docker-entrypoint.sh /entrypoint.sh

EXPOSE 8000

ENTRYPOINT ["/entrypoint.sh"]
CMD ["gunicorn"]
