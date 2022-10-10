package policies.hello

# default to a "closed" system, 
# only grant access when explicitly granted
# 0.0.1

default allowed = false
default visible = false
default enabled = false

allowed {
    input.role == "web-admin"
}

enabled {
    visible
}

visible {
    input.app == "web-console"
}
