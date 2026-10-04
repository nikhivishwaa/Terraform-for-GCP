#### Count and conditional Expression

```
count = length(var.bucket_names) // executes the loop n times

name     = var.bucket_names[count.index] // returns current index in the loop
```

```
storage_class = count.index % 2 == 0 ? "STANDARD" : "NEARLINE" // ternary operator
```