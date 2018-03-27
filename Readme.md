
# Build image 

docker build -t go-app .

Running the image 

# docker run --rm -p 8000:8000 go-app

# docker tag 

docker tag go-app kepung/go-app

# push to docker repo

docker push kepung/go-app


