# 02. Terraform Overview + Setup

## What is Terraform

Cloud-agnostic tool for building, changing and versioning infrastructure safely and efficiently.

## Terraform Architecture

### Terraform Core

Uses **State** and **Config** to interact with the cloud provider and apply the necessary changes.

### Terraform Providers

Plugins that tell Terraform how to map specific configuration to a specific cloud provider (AWS, Azure, GCP, CLoudflare, etc. ).

Multiple providers exist.

## Exercise

1. [Install Terraform](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli)
2. Configure AWS user
3. Go to the [terraform](./terraform/) directory
4. Run `terraform init`

   This will download the required providers.

   ```console
   $ terraform init

   Initializing the backend...

   Initializing provider plugins...
   - Finding hashicorp/aws versions matching "~> 3.0"...
   - Installing hashicorp/aws v3.76.1...
   - Installed hashicorp/aws v3.76.1 (signed by HashiCorp)

   Terraform has created a lock file .terraform.lock.hcl to record the provider
   selections it made above. Include this file in your version control repository
   so that Terraform can guarantee to make the same selections by default when
   you run "terraform init" in the future.

   Terraform has been successfully initialized!

   You may now begin working with Terraform. Try running "terraform plan" to see
   any changes that are required for your infrastructure. All Terraform commands
   should now work.

   If you ever set or change modules or backend configuration for Terraform,
   rerun this command to reinitialize your working directory. If you forget, other
   commands will detect it and remind you to do so if necessary.
   ```

5. Run `terraform plan`

   This will show you the changes that will be made if you apply the current configuration.

   ```console
   $ terraform plan

   Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following
   symbols:
   + create

   Terraform will perform the following actions:

   # aws_instance.example will be created
   + resource "aws_instance" "example" {
       + ami                                  = "ami-0694d931cee176e7d"
       + arn                                  = (known after apply)
       + associate_public_ip_address          = (known after apply)
       + availability_zone                    = (known after apply)
       + cpu_core_count                       = (known after apply)
       + cpu_threads_per_core                 = (known after apply)
       + disable_api_termination              = (known after apply)
       + ebs_optimized                        = (known after apply)
       + get_password_data                    = false
       + host_id                              = (known after apply)
       + id                                   = (known after apply)
       + instance_initiated_shutdown_behavior = (known after apply)
       + instance_state                       = (known after apply)
       + instance_type                        = "t2.micro"
       + ipv6_address_count                   = (known after apply)
       + ipv6_addresses                       = (known after apply)
       + key_name                             = (known after apply)
       + monitoring                           = (known after apply)
       + outpost_arn                          = (known after apply)
       + password_data                        = (known after apply)
       + placement_group                      = (known after apply)
       + placement_partition_number           = (known after apply)
       + primary_network_interface_id         = (known after apply)
       + private_dns                          = (known after apply)
       + private_ip                           = (known after apply)
       + public_dns                           = (known after apply)
       + public_ip                            = (known after apply)
       + secondary_private_ips                = (known after apply)
       + security_groups                      = (known after apply)
       + source_dest_check                    = true
       + subnet_id                            = (known after apply)
       + tags_all                             = (known after apply)
       + tenancy                              = (known after apply)
       + user_data                            = (known after apply)
       + user_data_base64                     = (known after apply)
       + vpc_security_group_ids               = (known after apply)
       }

   Plan: 1 to add, 0 to change, 0 to destroy.

   ──────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────

   Note: You didn't use the -out option to save this plan, so Terraform can't guarantee to take exactly these actions if you run
   "terraform apply" now.
   ```

6. Run `terraform apply` to apply the configuration.

   ```console
   $ terraform apply

   Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following
   symbols:
   + create

   Terraform will perform the following actions:

   # aws_instance.example will be created
   + resource "aws_instance" "example" {
       + ami                                  = "ami-0694d931cee176e7d"
       + arn                                  = (known after apply)
       + associate_public_ip_address          = (known after apply)
       + availability_zone                    = (known after apply)
       + cpu_core_count                       = (known after apply)
       + cpu_threads_per_core                 = (known after apply)
       + disable_api_termination              = (known after apply)
       + ebs_optimized                        = (known after apply)
       + get_password_data                    = false
       + host_id                              = (known after apply)
       + id                                   = (known after apply)
       + instance_initiated_shutdown_behavior = (known after apply)
       + instance_state                       = (known after apply)
       + instance_type                        = "t2.micro"
       + ipv6_address_count                   = (known after apply)
       + ipv6_addresses                       = (known after apply)
       + key_name                             = (known after apply)
       + monitoring                           = (known after apply)
       + outpost_arn                          = (known after apply)
       + password_data                        = (known after apply)
       + placement_group                      = (known after apply)
       + placement_partition_number           = (known after apply)
       + primary_network_interface_id         = (known after apply)
       + private_dns                          = (known after apply)
       + private_ip                           = (known after apply)
       + public_dns                           = (known after apply)
       + public_ip                            = (known after apply)
       + secondary_private_ips                = (known after apply)
       + security_groups                      = (known after apply)
       + source_dest_check                    = true
       + subnet_id                            = (known after apply)
       + tags_all                             = (known after apply)
       + tenancy                              = (known after apply)
       + user_data                            = (known after apply)
       + user_data_base64                     = (known after apply)
       + vpc_security_group_ids               = (known after apply)
       }

   Plan: 1 to add, 0 to change, 0 to destroy.

   Do you want to perform these actions?
   Terraform will perform the actions described above.
   Only 'yes' will be accepted to approve.

   Enter a value: yes

   aws_instance.example: Creating...
   aws_instance.example: Still creating... [10s elapsed]
   aws_instance.example: Still creating... [20s elapsed]
   aws_instance.example: Still creating... [30s elapsed]
   aws_instance.example: Still creating... [40s elapsed]
   aws_instance.example: Still creating... [50s elapsed]
   aws_instance.example: Creation complete after 56s [id=i-0a0cdea12a5f451bb]

   Apply complete! Resources: 1 added, 0 changed, 0 destroyed.
   ```

   If we run `terraform plan` again Terraform will tell us that no changes need to be applied.

   ```console
   $ terraform plan
   aws_instance.example: Refreshing state... [id=i-0a0cdea12a5f451bb]

   No changes. Your infrastructure matches the configuration.

   Terraform has compared your real infrastructure against your configuration and found no differences, so no changes are needed.
   ```

   Because we have not specified something else, Terraform will create the state file locally.

7. Run `terraform destroy` to destroy the resources we have created.

   ```console
       $ terraform destroy

   aws_instance.example: Refreshing state... [id=i-0a0cdea12a5f451bb]

   Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following
   symbols:

   - destroy

   Terraform will perform the following actions:

   # aws_instance.example will be destroyed

   - resource "aws_instance" "example" {
   - ami = "ami-0694d931cee176e7d" -> null
   - arn = "arn:aws:ec2:eu-west-1:829065352146:instance/i-0a0cdea12a5f451bb" -> null
   - associate_public_ip_address = true -> null
   - availability_zone = "eu-west-1b" -> null
   - cpu_core_count = 1 -> null
   - cpu_threads_per_core = 1 -> null
   - disable_api_termination = false -> null
   - ebs_optimized = false -> null
   - get_password_data = false -> null
   - hibernation = false -> null
   - id = "i-0a0cdea12a5f451bb" -> null
   - instance_initiated_shutdown_behavior = "stop" -> null
   - instance_state = "running" -> null
   - instance_type = "t2.micro" -> null
   - ipv6_address_count = 0 -> null
   - ipv6_addresses = [] -> null
   - monitoring = false -> null
   - primary_network_interface_id = "eni-0959148cf512d94f4" -> null
   - private_dns = "ip-172-31-23-248.eu-west-1.compute.internal" -> null
   - private_ip = "172.31.23.248" -> null
   - public_dns = "ec2-3-253-96-41.eu-west-1.compute.amazonaws.com" -> null
   - public_ip = "3.253.96.41" -> null
   - secondary_private_ips = [] -> null
   - security_groups = [
       - "default",
       ] -> null
   - source_dest_check = true -> null
   - subnet_id = "subnet-c2dee98a" -> null
   - tags = {} -> null
   - tags_all = {} -> null
   - tenancy = "default" -> null
   - vpc_security_group_ids = [
       - "sg-e3e46dac",
       ] -> null
   - capacity_reservation_specification {
       - capacity_reservation_preference = "open" -> null
       }
   - credit_specification {
       - cpu_credits = "standard" -> null
       }
   - enclave_options {
       - enabled = false -> null
       }
   - metadata_options {
       - http_endpoint = "enabled" -> null
       - http_put_response_hop_limit = 1 -> null
       - http_tokens = "optional" -> null
       - instance_metadata_tags = "disabled" -> null
       }
   - root_block_device {
       - delete_on_termination = true -> null
       - device_name = "/dev/sda1" -> null
       - encrypted = false -> null
       - iops = 100 -> null
       - tags = {} -> null
       - throughput = 0 -> null
       - volume_id = "vol-041a995ce6f58b966" -> null
       - volume_size = 8 -> null
       - volume_type = "gp2" -> null
       }
   }

   Plan: 0 to add, 0 to change, 1 to destroy.

   Do you really want to destroy all resources?
   Terraform will destroy all your managed infrastructure, as shown above.
   There is no undo. Only 'yes' will be accepted to confirm.

   Enter a value: yes

   aws_instance.example: Destroying... [id=i-0a0cdea12a5f451bb]
   aws_instance.example: Still destroying... [id=i-0a0cdea12a5f451bb, 10s elapsed]
   aws_instance.example: Still destroying... [id=i-0a0cdea12a5f451bb, 20s elapsed]
   aws_instance.example: Still destroying... [id=i-0a0cdea12a5f451bb, 30s elapsed]
   aws_instance.example: Still destroying... [id=i-0a0cdea12a5f451bb, 40s elapsed]
   aws_instance.example: Still destroying... [id=i-0a0cdea12a5f451bb, 50s elapsed]
   aws_instance.example: Destruction complete after 53s

   Destroy complete! Resources: 1 destroyed.
   ```
