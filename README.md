# Kubernetes Self-Healing App Demo

## Overview

This project demonstrates Kubernetes self-healing capabilities using Minikube.

The application is deployed with 3 replicas using a Kubernetes Deployment. A Bash script continuously deletes pods to simulate failures. Kubernetes automatically recreates the deleted pods to maintain the desired state.

## Features

* Kubernetes Deployment with 3 replicas
* NodePort Service for external access
* Automatic pod recovery
* Bash-based failure simulation
* Minikube local Kubernetes cluster

## Tech Stack

* Kubernetes
* Minikube
* Docker
* YAML
* Bash
* kubectl

## Run

```bash
kubectl apply -f deployment.yaml
kubectl apply -f service.yaml
```

Monitor pods:

```bash
kubectl get pods -w
```

Run failure simulation:

```bash
./kill_pods.sh
```

## Demonstration

Kubernetes automatically recreates deleted pods, proving self-healing and desired-state reconciliation.
