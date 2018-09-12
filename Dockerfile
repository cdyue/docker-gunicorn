FROM python:2.7.15-alpine3.8

RUN pip install --no-cache-dir gunicorn=19.7.1 cffi jinja2 weasyprint pdfmerge falcon && 

EXPOSE 8000

CMD ["gunicorn"]
