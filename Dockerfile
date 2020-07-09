FROM python:3.7.8-stretch

## Step 1:
# Create a working directory
WORKDIR /app

## Step 2:
# Copy source code to working directory
COPY app.py .
COPY requirements.txt .
COPY /model_data/ model_data/

## Step 3:
# Install packages from requirements.txt
# hadolint ignore=DL3013
RUN pip3 install --upgrade pip && \
	pip3 install -r requirements.txt

## Step 4:
# Expose port 80
EXPOSE 80/tcp

## Step 5:
# Run app.py at container launch
CMD ["python3", "app.py"]
