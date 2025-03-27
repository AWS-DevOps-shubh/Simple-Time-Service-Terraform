# Stage 1: Build dependencies
FROM python:3.9-slim AS simple

# Set Working Directory
WORKDIR /app

# Copy requirements.txt first to enable Docker caching
COPY requirements.txt /app/


# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt --target /app/dependencies

# Stage 2: Final image
FROM python:3.9-slim AS timestamp

WORKDIR /app

# Create a non-root user
RUN addgroup --system appgroup && adduser --system --group appuser

# Copy dependencies from simple
COPY --from=simple  /app/dependencies /app/dependencies

# Set Python path to installed dependencies
ENV PYTHONPATH="/app/dependencies"

# Copy Application data
COPY app.py /app/

# Login non-rrot user
USER appuser

# Expose port
EXPOSE 5000

# To run application
CMD ["python", "app.py"]