# Postgres Image for Prisma Shadow Database

Using this image minimally requires the following environment variables:

- `POSTGRES_PASSWORD`
- `SHADOW_DATABASE`: the shadow database name

Meant to be used as the shadow database for Prisma migrations. Useful for CI
checking if Prisma migrations are needed, for example.

```
prisma migrate diff \
  --from-migrations prisma/migrations/ \
  --to-schema-datamodel prisma/schema.prisma \
  --shadow-database-url=${SHADOW_DATABASE_URL} \
  --exit-code
```

[shadow]: https://www.prisma.io/docs/concepts/components/prisma-migrate/shadow-database
