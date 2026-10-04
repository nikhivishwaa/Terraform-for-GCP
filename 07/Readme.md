#### Data Block - It brings data into terraform in read only mode

```
data "google_compute_network" "default_vpc" {
  name = "default"
}
```