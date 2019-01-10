FROM node:11-slim

WORKDIR /app

RUN apt-get update && \
    apt-get install -y tesseract-ocr tesseract-ocr-deu pdfsandwich=0.1.6* && \
    rm -rf /var/lib/apt/lists/*

CMD ["pdfsandwich"]
