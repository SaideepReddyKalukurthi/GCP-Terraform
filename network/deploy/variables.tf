variable "project-id" {
    type = list(string)
    default = [ "" ]
}

variable "region" {
    type = list(string)
    default = [ "" ]
}

variable "network-name" {
    type = list(string)
    default = [ "peering-01", "peering-02" ]
}


