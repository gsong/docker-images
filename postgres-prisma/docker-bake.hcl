group "default" {
  targets = ["db-16_2", "db-16_3"]
}

target "db-16_2" {
  context = "."
  dockerfile = "Dockerfile"
  platforms = ["linux/amd64", "linux/arm64"]
  args = {
    VERSION = "16.2"
  }
  tags = ["gsong/postgres-prisma:16.2-alpine"]
}

target "db-16_3" {
  context = "."
  dockerfile = "Dockerfile"
  platforms = ["linux/amd64", "linux/arm64"]
  args = {
    VERSION = "16.3"
  }
  tags = ["gsong/postgres-prisma:16.3-alpine"]
}
