#AWS Info
aws_region="eu-west-1"
availability_zones = ["eu-west-1a","eu-west-1b","eu-west-1c"]

# Create a VPC?
create_vpc=true
vpc_name="poc-andyr1"

# Common ROSA Cluster Info
cluster_name="poc-andyr1"
operator_role_prefix="poc-andyr1"
account_role_prefix="poc-andyr1"

# Advanced ROSA Cluster Options
multi_az=true
managed_oidc=true
rosa_openshift_version="4.13.12"
machine_type="m5.xlarge"
worker_node_replicas = 2
autoscaling_enabled = true
min_replicas = 3
#Change min to at least 3 for HA
max_replicas = 6
additional_tags={
     Terraform = "true"
     Environment = "dev"
     owner = "mobbtf@redhat.com"
     ROSAClusterName="mobbtf-01"
     project="mobbtf"
     jira="cssi-1341" 
   }

#Private Link Cluster & VPC
single_nat_gateway=true 
enable_private_link=true
vpc_cidr_block="10.12.0.0/16"
private_subnet_cidrs=["10.12.0.0/22", "10.12.4.0/22", "10.12.8.0/22"]
public_subnet_cidrs=["10.12.128.0/24", "10.12.129.0/24", "10.12.130.0/24"]
