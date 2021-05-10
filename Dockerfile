FROM mockoon/cli:latest

docker run -d -p 3000:3000 mockoon/cli:latest -d https://raw.githubusercontent.com/mockoon/mock-samples/main/samples/generate-mock-data.json -i 0 -p 3000