variable "TAG" {
    default = "latest"
}

group "default" {
    targets = ["app"]
}

target "app" {
    target = "app"
    args = {
        BUILDKIT_INLINE_CACHE = 1
    }
    tags = [
        "pandawa/tracing-consumer:${TAG}",
        "pandawa/tracing-consumer:latest"
    ]
    platforms = [
        "linux/amd64",
        "linux/arm64"
    ]
}
