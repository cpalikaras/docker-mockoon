FROM mockoon/cli:latest
docker run -d -p 8080:8080 mockoon/cli:latest -d https://raw.githubusercontent.com/mockoon/mock-samples/main/samples/generate-mock-data.json -i 0 -p 8080