FROM python:3.11-slim

RUN addgroup --system appgroup && adduser --system --ingroup appgroup appuser

WORKDIR /app
COPY requirements.txt ./
RUN pip install -r requirements.txt
COPY . .

USER appuser
EXPOSE 9000
CMD ["python", "main.py"]
