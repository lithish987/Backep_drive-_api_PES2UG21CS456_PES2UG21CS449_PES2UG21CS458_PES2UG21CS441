#GDrive Backup using Docker & Kubernetes
## This is sample code to help you get started on your project


### You should write Kubernets yaml config files to appropirately control  containers

### Learning Goals

1. Understand API's and how you can use API's to manipulate Cloud Resoucres
2. Understand containerization and how you can package your application to run on any system
3. Understand how you can control orchestrate containers  using Kubernetes

### Deliverables

   1. Using Google's API, write a python script to upload the contents of your folder to Gdrive. 
   2. Containerize your application and all required dependencies and build a Docker image.
   3. Now,using Kubernets, Orchestrate(Control) your application to conduct back ups of your chosen folder at fixed intervals.

### Hints
1. How would you connect folders on your real machines with your containers and pods?
2. How would you schedule a task at regualr intervals in Kubernetes?

### References
    1. https://python.plainenglish.io/automate-google-drive-backup-using-python-105f57e2151
    2. https://developers.google.com/drive/api/quickstart/python
    3. https://kubernetes.io/ 
    4. Any AI  code generator of your choice ;)
### Notes
 1. The main logic of the app is the quickstart.py file, which uses the Google API to list out files on GDrive.

 2. Replace the empty credentials.json file with the one you obtain for you Google drive to have acess to the API.

 3.  Modify the Dockerfile appropriately to package your application and required dependencies
 4. Please don't upload your containers publicly onto public registries like DockerHub as sensitive Gdrive data might get leaked.
### Bonus
Can you come up with small gui to schedule the frequency of upload?
# Kubernetes CronJob for Backup Service

## Overview

This project demonstrates how to set up a Kubernetes CronJob to automate backup tasks using a backup service. The CronJob is configured to run at midnight every day, triggering a backup operation in a Kubernetes cluster.

## Prerequisites

- Kubernetes cluster (e.g., Minikube, Docker Desktop with Kubernetes enabled)
- `kubectl` command-line tool installed and configured to connect to your Kubernetes cluster

## Usage

1. **Clone the Repository:**

   ```bash
   git clone https://github.com/yourusername/backup-service.git
   cd backup-service
#Build Docker Image:
docker build -t backup-service .
#Create Kubernetes Resources:

PersistentVolumeClaim:
kubectl apply -f pvc.yaml

#Secret (for Google Drive API token):
kubectl create secret generic google-token --from-file=token.json

# Kubernetes CronJob for Backup Service
kubectl logs -f <pod_name>
 'It is imprtant to not share your credentials file to anyone ansd also give rquired permissions in google project for api drive
## Overview

This project demonstrates how to set up a Kubernetes CronJob to automate backup tasks using a backup service. The CronJob is configured to run at midnight every day, triggering a backup operation in a Kubernetes cluster.

## Prerequisites

- Kubernetes cluster (e.g., Minikube, Docker Desktop with Kubernetes enabled)
- `kubectl` command-line tool installed and configured to connect to your Kubernetes cluster




