  
output "jenkins_IP" {
    value = aws_instance.jenkins_VM.public_ip
}

output "py_test_IP" {
    value = aws_instance.py_test_VM.public_ip
}
