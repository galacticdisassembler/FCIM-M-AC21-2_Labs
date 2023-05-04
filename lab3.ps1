# Build the image with tag test:test using the k8s.io namespace
nerdctl --namespace k8s.io build -t test:test .

# Apply kubernetes configuration
kubectl apply -f .\kubernetes\namespace.yaml
kubectl apply -f .\kubernetes\deployment.yaml
kubectl apply -f .\kubernetes\service.yaml

# Open browser and go to http://localhost:8080/hello
# You should see the same output as in lab1.ps1