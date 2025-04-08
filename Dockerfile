# Use an official Python runtime as a parent image
FROM python:3.9-slim

# Set the working directory
WORKDIR /app

# Copy the local code to the container
COPY app.py .

# Install Flask
RUN pip install Flask

# Make port 5000 available to the world outside this container
EXPOSE 5000

# Run the application
CMD ["python", "app.py"]
