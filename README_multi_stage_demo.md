# 🐳 Docker Multi-Stage Build Demo

This project demonstrates how to reduce Docker image size using **multi-stage builds** — a real-world technique to create lightweight, secure, and production-ready containers.

---

## 📁 Folder Structure

```
docker-multistage-demo/
├── app/
│   └── run.sh              # Shell script with dynamic ENV variables
├── Dockerfile              # Multi-stage Dockerfile
└── .dockerignore           # Cleanup for build context
```

---

## 🚀 How It Works

1. **First Stage (`builder`)**:
   - Uses Alpine Linux
   - Copies and prepares the shell script (`chmod +x`)

2. **Second Stage (`runtime`)**:
   - Starts fresh with Alpine
   - Sets environment variables
   - Copies only the final executable from the builder
   - Prints output using injected environment variables

---

## 🔧 Run It

### Build the image:

```bash
docker build -t multi_stage_demo .
```

### Run the container:

```bash
docker run --rm multi_stage_demo
```

### Output:

```
Hello from Sathya!
Role: Optimized Docker
🔐 Multi-stage builds are awesome!
✅ This image is lightweight and clean!
```

---

## 🐳 Pull from Docker Hub

```bash
docker pull pillaisathya/multi_stage_demo:latest
```

---

## 🎯 Why Use Multi-Stage Builds?

- 📦 Smaller images (e.g., 800MB ➝ ~12MB)
- 🔒 More secure (no build tools in production)
- 🚀 Faster deployments and CI/CD builds
- 💼 Used in real-world production pipelines

---

## 💡 Ideal For:

- DevOps engineers optimizing Docker images
- Anyone preparing for **real-world Docker interviews**
- Portfolio projects showcasing image efficiency

---

Made with ❤️ by [Sathya](https://github.com/PillaiSathya)
