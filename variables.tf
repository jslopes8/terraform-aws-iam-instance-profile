variable "create" {
    type    = bool
    default = true
}
variable "name" {
    type    = string
}
variable "default_tags" {
    type    = map(string)
    default = {}
}
variable "iam_policy" {
    type    = any
    default = []
}
variable "assume_role_policy" {
    type    = any
    default = []
}
variable "path" {
    type    = string
    default = "/"
}
variable "description" {
    type    = string
    default = null
}
variable "max_session_duration" {
    type    = number
    default = 3600
}
variable "force_detach_policies" {
    type    = bool
    default = false
}
variable "use_num_suffix" {
    type        = bool
    default     = false
}
variable "import_managed_policies" {
    type    = any
    default = []
}
