 prg={
        rg1={
            name = "rg_aqws"
            location ="westus"

        }
    }

   pvnet={
    vnet1 = {
        name = "vn_paglu"
        location ="westus"
        resource_group_name = "rg_aqws"
        address_space = ["10.0.0.0/16"]
    
    }

}

psubnet={
        subnet1={
            name = "frnt_subnet"
            resource_group_name = "rg_aqws"
            virtual_network_name = "vn_paglu"
            address_prefixes = ["10.0.1.0/24"]
        }
        subnet2={
            name = "bcknd_subnet"
            resource_group_name = "rg_aqws"
            virtual_network_name = "vn_paglu"
            address_prefixes = ["10.0.2.0/24"]
        }

    }
    