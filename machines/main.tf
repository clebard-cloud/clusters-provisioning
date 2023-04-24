resource "proxmox_vm_qemu" "server" {
    count = length(var.server_ips)
    name = "server-${count.index}"
    target_node = "${var.pm_node_name}"
    clone = var.template_name
    full_clone = true

    os_type = "cloud-init"
    ipconfig0 = "ip=${var.server_ips[count.index]},gw=${var.gateway}"

    memory = var.k3s_server_memory
    cores = var.k3s_server_cpu

    sshkeys = var.ssh_public_key

    lifecycle {
        ignore_changes = [
            ciuser,
            sshkeys,
            disk,
            network
        ]
    }
}

resource "proxmox_vm_qemu" "agent" {
    count = length(var.agent_ips)
    name = "agent-${count.index}"
    target_node = "${var.pm_node_name}"
    clone = var.template_name
    full_clone = true

    os_type = "cloud-init"
    ipconfig0 = "ip=${var.agent_ips[count.index]},gw=${var.gateway}"

    memory = var.k3s_agent_memory
    cores = var.k3s_agent_cpu

    sshkeys = var.ssh_public_key

    lifecycle {
        ignore_changes = [
            ciuser,
            sshkeys,
            disk,
            network
        ]
    }
}