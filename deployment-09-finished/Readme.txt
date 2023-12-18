Multistaged builds (Video 155)
For React, Angular, View for PROD 
1) we install node only to build the code not to execute if using express
2) we need ngnx to execute the compiled code

to build
docker build -f frontend/Dockerfile.prod -t giohnny/goals-react ./frontend
docker push giohnny/goals-react