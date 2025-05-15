# Argo CD OTel

Argo CD OTel (OpenTelemetry) integration enables observability for Argo CD by
exporting metrics, traces the OpenTelemetry standard. The project is developed
as a part of Environment of Services Implementation course (Środowiska
udostępniania usług) at AGH University in Kraków at Faculty of Computer Science.

Year: 2024/2025, semester: summer, group 4.

## Authors

- [Piotr Kuchta](https://github.com/kpiotr6)
- [Jakub Sus](https://github.com/Suselkowy)
- [Jakub Szaredko](https://github.com/Szaroslav)
- [Jeremiasz Śliwiński](https://github.com/Jeremiej19)

## Table of Contents

1. [Introduction](#introduction)
2. [Technology Stack](#technology-stack)
3. [Case Study Concept](#case-study-concept)
4. [Architecture](#architecture)
5. [Environment Configuration](#environment-configuration)
6. [Installation](#installation)
7. [Reproduction](#reproduction)
8. [Demo Deployment](#demo-deployment)
9. [Using Artificial Intelligence](#using-artificial-intelligence)
10. [Summary](#summary)
11. [References](#references)

## Introduction

Argo CD is a declarative, GitOps continuous delivery tool for Kubernetes. It
follows the GitOps pattern of using Git repositories as the source of truth for
defining the desired application state. It can be configured by specifying
Kubernetes manifests in several ways e.g YAML/jsom manifests, kustomize
applications, helm charts or jsonnet files. Argo CD automates the deployment of
the desired application states in the specified target environments. Application
deployments can track updates to branches, tags, or be pinned to a specific
version of manifests at a Git commit. Argo CD is implemented as a Kubernetes
controller which continuously monitors running applications and compares the
current, live state against the desired target state (as specified in the Git
repo). A deployed application whose live state deviates from the target state is
considered OutOfSync. Argo CD reports & visualizes the differences, while
providing facilities to automatically or manually sync the live state back to
the desired target state. Any modifications made to the desired target state in
the Git repo can be automatically applied and reflected in the specified target
environments.

## Technology Stack

- Argo CD
- Kubernetes - is an open source system for automating deployment, scaling, and
  management of containerized applications.
- Minikube - is lightweight implementation of Kubernetes, installing simple cluster
  consiting of one node.
- Amazon Elastic Kubernetes Service (Amazon EKS) - is a fully managed Kubernetes
  service that enables you to run Kubernetes seamlessly in both AWS Cloud
  and on-premises data centers.
- Grafana - is a multi-platform open source analytics and interactive
  visualization web application. When connected to kubernetes allows for
  monitoring of deployed applications.
- Prometheus - is a free software application used for event monitoring
  and alerting. It records metrics in a time series database (allowing
  for high dimensionality) built using an HTTP pull model, with flexible
  queries and real-time alerting.

## Case Study Concept

This project's goal is to present simple application of Argo CD tool. It will be used
to deploy application [google-microservices-demo](https://github.com/agh-cs-imbeciles/google-microservices-demo)
forked from [microservices-demo](https://github.com/GoogleCloudPlatform/microservices-demo)
which is web-based e-commerce solution. Apart from that, deployments of Grafana and Prometheus will be used
to monitor current metrics [exposed by Argo CD](https://argo-cd.readthedocs.io/en/latest/operator-manual/metrics/) as well
as e-commerce app itself. To control what is the desired state of the application, Helm charts defined in
`google-microservices-demo/helm-chart/` will be incorporated. As some of metrics changes are triggered by changes in
demo application repository or Argo CD configuration, we will create scripts to facilitate performing those updates.
We plan to test this project locally on minikube and push final version on Amazon EKS
to compare correctness between both environments.

## Architecture

🚧

## Environment Configuration

#### 2. Prometheus Setup With Argo

- Run configured prometheus (first you need to have argo-cd set up)

```
kubectl apply -f prometheus/argo-prometheus.yaml
```

- port forward prometheus and grafana GUI to local machine

```
kubectl port-forward service/prometheus-operated -n monitoring 9090:9090
kubectl port-forward service/prometheus-grafana -n monitoring 3000:80
```

## Installation

🚧

## Reproduction

🚧

## Demo Deployment

🚧

## Using Artificial Intelligence

🚧

## Summary

🚧

## References

🚧
