# 01. Evolution of Cloud + Infrastructure as Code

In the 1990s if you wanted to build a product you would also need to buy the infrastructure to run it on.

In the 2000s cloud providers like AWS emerged, where you can now rent the infrastructure instead.

In the 2010/2020s this is the standard way to do it.
Infrastructure is now considered short-lived and immutable.

## Provisioning Cloud Resources

- By hand via the UI (ClickOps)
- Via the CLI/API (by hand or automated)
- Using Infrastructure as Code tools (IaC)

## Categories of IaC Tools

- Ad hoc scripts (tha use the cloud provider CLI/API to create infrastructure)
- Configuration management tools (like Ansible, more suited for on-prem environments)
- Server Templating tools (AMIs, VM templates, etc.)
- Orchestration tools (like Kubernetes, more about application development)
- Provisioning tools (for provisioning cloud resources)
  - declerative - provide the end state you want to achieve and the tool takes care of the steps **(Terraform is here)**
  - imperative - provide the steps you want to run and the tool will run them


- Cloud Specific tools (AWS CloudFormation, Azure Resource Manager, Google Cloud Deployment Manager)
- Cloud Agnostic tools (**Terraform**, Pulumi)
g