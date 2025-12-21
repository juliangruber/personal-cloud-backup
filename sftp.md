# sftp

Here is how to back up your SFTP server via `rclone`.

## backup command

```console
rclone sync <RCLONE_SOURCE_NAME>: <RCLONE_DESTINATION>
```

## rclone config

```ini
[<RCLONE_SOURCE_NAME>]
type = sftp
host = <HOSTNAME>
user = <USERNAME>
pass = <PASSWORD>
shell_type = unix
md5sum_command = none
sha1sum_command = none
```

## TODO

- [ ] Don't inline cleartext password

