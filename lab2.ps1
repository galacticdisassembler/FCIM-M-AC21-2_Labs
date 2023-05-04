# Build container image with tag test:test
nerdctl build -t test:test .

# Run container on port 8080
nerdctl run -it -p 8080:8080 test:test

# Open browser and go to http://localhost:8080/hello
# You should see the same output as in lab1.ps1