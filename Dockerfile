# -------- Stage 1: Build Stage --------
FROM alpine AS builder
WORKDIR /app
COPY app/run.sh .
RUN chmod +x run.sh

# -------- Stage 2: Runtime Stage --------
FROM alpine
WORKDIR /app

# Set default environment variables (can be overridden)
ENV USER_NAME Sathya
ENV ROLE "Optimized Docker"

COPY --from=builder /app/run.sh .
CMD ["./run.sh"]

