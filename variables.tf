variable "create" {
    type    = bool
    default = true
}
variable "name" {
    type    = string
}
variable "policy_type" {
    type    = string
}
variable "policy_identifiers" {
    type    = string
}
variable "description" {
    type    = string
}
variable "effect" {
    type    = string
}
variable "actions" {
    type    = list(string)
    default = []
}
variable "resources" {
    type    = list(string)
    default = []
}
variable "default_tags" {
    type    = map(string)
    default = {}
}

