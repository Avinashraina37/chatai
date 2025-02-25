# Use an official Python runtime as a parent image
FROM python:3.10

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file into the container
COPY . .

# Install dependencies
RUN pip install --no-cache-dir -r req.txt

# Expose port 5000
EXPOSE 5000
# Run the application
CMD ["python", "app.py"]
