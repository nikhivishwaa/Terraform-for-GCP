#### For Each meta argument for maps

```
for_each = var.buckets # {"a":1, "b":58, ....}

name     = each.key # "a", "b", ...
location = each.value # 1, 58, ...
```

#### Import block to import existing infra to terraform for it's management
```
import {
  to = <terraform_id>
  id = "<project_id>/<resource_id>"
}
```