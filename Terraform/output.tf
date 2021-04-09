output "jenkins_IP" {
  value = module.ec2_instances.jenkins_IP
}

output "prod_endpoint" {
  value = module.RDS_instances.prod_RDS_Endpoint
}

output "py_test_IP" {
  value = module.ec2_instances.py_test_IP
}

output "test_endpoint" {
  value = module.RDS_instances.test_RDS_Endpoint
}


