FROM python:2.7

RUN pip install --no-cache-dir gunicorn==19.4.5

COPY /docker-entrypoint.sh /entrypoint.sh

EXPOSE 8000

ENTRYPOINT ["/entrypoint.sh"]
CMD ["gunicorn"]
