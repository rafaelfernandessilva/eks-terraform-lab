output "launch_template_name" {
    value = aws_launch_template.cluster.name
}

output "launch_template_version" {
    value = aws_launch_template.cluster.latest_version
}

