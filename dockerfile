# Use an official lightweight Python image as base
FROM python:alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the requirements file and install Python dependencies
COPY requirements.txt .
RUN pip install -r requirements.txt

# Copy the rest of the application code
COPY . .

# Expose port 5000 to allow communication to/from the container
EXPOSE 5000

# Specify the command to run your Flask app
CMD ["python", "app.py"]

