group "default" {
  targets = ["db-16_6"]
}

target "db-16_6" {
  context = "."
  dockerfile = "Dockerfile"
  platforms = ["linux/amd64", "linux/arm64"]
  args = {
    VERSION = "16.6"
  }
  tags = ["gsong/postgres-prisma:16.6-alpine"]
}
