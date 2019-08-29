provider "google" {
    credentials= "${file("../credentials.json")}"
    project ="test-net-terraform"
    region = "europe-west1"
}
