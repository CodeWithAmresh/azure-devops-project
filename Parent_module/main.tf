module "rgs" {
    source = "../child_module/azure_rg"
    rgs = var.prg
  
}

module "vnets" {
    depends_on = [ module.rgs ]
    source = "../child_module/azure_vn"
    vnets = var.pvnet

  
}

module "subnet" {
    depends_on = [ module.vnets ]
    source = "../child_module/azure_subnet"
    snets = var.psubnet

  
}
