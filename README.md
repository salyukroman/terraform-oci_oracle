# Terraform OCI Infrastructure

Infrastructure as Code project for managing an existing Oracle Cloud Infrastructure environment with Terraform.

The project was built around a live OCI environment and gradually migrated under Terraform management without recreating production resources.

## Architecture

Oracle Cloud Infrastructure
- VCN: n8n-network
  - Internet Gateway
  - Route Table
  - Security List
  - DHCP Options
  - Public Subnet
- Compute Instance
  - VM.Standard.A1.Flex
  - Ubuntu Server

## Managed Resources

Terraform currently manages:

- OCI Compute Instance
- Virtual Cloud Network
- Public Subnet
- Internet Gateway
- Route Table
- Security List
- DHCP Options

The existing cloud resources were imported into Terraform state instead of being recreated.

## Remote State

Terraform state for the main infrastructure is stored remotely in OCI Object Storage.

The bootstrap configuration manages the Object Storage bucket used by the infrastructure backend.

Local state files, Terraform variable files, private keys, and local provider directories are excluded from Git.

## Safety

The migration followed a no-recreation approach:

1. Discover existing OCI resources.
2. Generate Terraform configuration.
3. Import existing resources into Terraform state.
4. Add lifecycle protection where appropriate.
5. Run `terraform plan`.
6. Continue only when the plan shows no infrastructure changes.
7. Replace hard-coded resource relationships with Terraform references.
8. Verify again with `terraform plan`.

Expected result:

`No changes. Your infrastructure matches the configuration.`

## Technologies

- Terraform
- Oracle Cloud Infrastructure
- OCI Terraform Provider
- OCI Object Storage
- Ubuntu Linux
- Git
- GitHub
- SSH

## Skills Demonstrated

- Terraform resource import
- Infrastructure as Code
- OCI networking
- Remote Terraform state
- Terraform dependency management
- State safety
- Git version control
- SSH authentication

## Repository Structure

- `bootstrap/` — creates and manages the Object Storage backend resources
- `infrastructure/` — manages the OCI compute and network infrastructure
- `.gitignore` — excludes Terraform state, local variables, provider cache, and private keys

## Validation Workflow

Before committing infrastructure changes:

1. Run `terraform fmt -recursive`.
2. Run `terraform validate` in each Terraform directory.
3. Review `terraform plan`.
4. Commit only after confirming the planned changes are expected.
