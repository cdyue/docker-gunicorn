FROM python:2.7

RUN pip install --no-cache-dir gunicorn==19.4.5

EXPOSE 8000

CMD ["gunicorn"]
