# MySQL

Here is how to back up your MySQL database via `mysqldump` and `rclone`.

## Backup command

```console
mysqldump \
  --user=<MYSQL_USERNAME> \
  -p<MYSQL_PASSWORD> \
  --databases <MYSQL_DATABASE_NAME> \
  -h <MYSQL_HOSTNAME> \
  | rclone rcat <RCLONE_DESTINATION>/database.sql
```

## TODO

- [ ] Don't inline cleartext password

