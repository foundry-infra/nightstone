# nightstone 

My local kubernetes cluster with microk8s and a cloud native stack. A reimplementation of https://github.com/foundry-infra/foundry-infra with focus on different principals.

# Setup

Install ubuntu 20.04 from usb live image. Add microk8s. Enable ingress, dns, storage, metrics-server, dashboard.

## Platform Services

The stack of services deployed is built on top of the preinstalled microk8s services. 

Services are exposed with ingress-nginx controller (bare metal configuration). 

Services have TLS certificates created with cert-manager using LetsEncrypt. These ingresses are configured for DNS challenge, I couldn't get HTTP challenge working.

Core DNS is used for Kubernetes and other custom DNS. Custom DNS is required due to the nature of the home-server-setup. 

The one public platform service is the Keycloak IdP: https://keycloak.mackenzieclark.codes.

HashiCorp Vault run with internal addresses: https://secrets.mackenzieclark.codes:8200.

## DNS

All external DNS is updated manually. My DNS is stored in DigitalOcean. In some cases, Core DNS must also be updated (see the platform dir).

## Vault Config

Most Vault config is explicitly updated with CLI or UI. See platform dir.

## Keycloak Config

All Keycloak config is updated in they Keycloak UI. 

## Email

The keycloak server is configured to send email with SMTP via AWS SES.

## Foundry Servers

Deployed to this cluster are two Foundry VTT servers:

- https://foundry.goldengulp.com
- https://foundry.frost-wind-terror.group

# Motivation

This personal project was made in aims to affect a few things:

- reduce my personal cloud spend on DigitalOcean
- simplify this cloud-native solution by:
  - removing abstractions
  - eliminating kludge dev tools 
  - replacing setup automation with manual bootstrapping

## Where is Terraform/Terragrunt?

This project does not include my favorite IaC tools. This project is an experiment to compare developer experience.