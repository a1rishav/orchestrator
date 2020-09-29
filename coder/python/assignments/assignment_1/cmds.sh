docker build -t python-app-exec:assignment_1 \
     --build-arg DOCKER_DIR=out \
     -f dockerfile .     

docker run --name python-app-exercise1 -e DOCKER_DIR=./out python-app-exec:assignment_1 

docker tag python-app-exec:assignment_1 urishav/first_repo:assignment_1
docker push urishav/first_repo:assignment_1

kubectl apply -f k8s.yaml

kubectl get deployments

kubectl get pods

#kubectl logs <pod_name>
