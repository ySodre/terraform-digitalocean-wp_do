output "stack_lb_ip" {
   value = module.wp_stack.lb_ip
   description= "IP do Load Balancer"
}

output "stack_wp_vm_ips" {
    value = module.wp_stack.wp_vm_ips
    description = "IPs das VMs do Wordpress"
}

output "stack_vm_nfs_ip" {
    value = module.wp_stack.vm_nfs_ip
    description = "IP da máquina NFS"
}

output "stack_database_username" {
   value     = module.wp_stack.database_username
   description = "Nome do usuário do banco de dados"
}

output "stack_database_password" {
   value     = module.wp_stack.database_password
   sensitive = true
}