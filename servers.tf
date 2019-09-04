resource "google_compute_instance" "Firstserver" {
 name = "thefirstserver"
 machine_type ="n1-standard-1"
 zone = "us-west1-a"

 boot_disk {
  initialize_params {
   image = "debian-cloud/debian-9"
  }
 }
 network_interface {
  subnetwork = "${google_compute_subnetwork.dev-subnet.name}"

  access_config {
  }
 }
 metadata = {
   foo = "bar"
 }
 service_account {
 scopes = ["userinfo-email","compute-ro","storage-ro"]
 }
}
