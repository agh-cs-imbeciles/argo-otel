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
- Grafana - is a multi-platform open source analytics and interactive
  visualization web application. When connected to kubernetes allows for
  monitoring of deployed applications.

## Case Study Concept

🚧

## Architecture

🚧

## Environment Configuration

🚧

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
