# Configuration des variables pour l'environnement VMware

variable "vcenter_server" {
  description = "Adresse IP ou nom de domaine du serveur vCenter"
  type        = string
  default     = "http://192.168.182.130"  # Remplacez par votre adresse
}

variable "username" {
  description = "Nom d'utilisateur pour se connecter à vCenter"
  type        = string
  default     = "faris"  # Remplacez par votre nom d'utilisateur
}

variable "password" {
  description = "Mot de passe pour se connecter à vCenter"
  type        = string
  sensitive  = true  # Masque la valeur dans les sorties
  default     = "faris"  # Remplacez par votre mot de passe
}

variable "datastore" {
  description = "Nom du datastore à utiliser"
  type        = string
  default     = "faris"  # Remplacez par le nom de votre datastore
}

