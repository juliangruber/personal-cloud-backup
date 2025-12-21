# ftps

Here is how to back up your FTPS server via `rclone`.

## backup command

```console
rclone sync <RCLONE_SOURCE_NAME>: <RCLONE_DESTINATION>
```

## rclone config

```ini
[<RCLONE_SOURCE_NAME>]
type = ftp
host = <HOSTNAME>
user = <USERNAME>
pass = <PASSWORD>
explicit_tls = true
```

## TODO

- [ ] Don't inline cleartext password

