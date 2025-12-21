# google drive

Here is how to back up your Google Drive via `rclone`.

## backup command

```console
rclone sync <RCLONE_SOURCE_NAME>: <RCLONE_DESTINATION>
```

## rclone config

```ini
[<RCLONE_SOURCE_NAME>]
type = drive
client_id = <GOOGLE_CLIENT_ID> 
client_secret = <GOOGLE_CLIENT_SECRET>
scope = drive.readonly
token = <GOOGLE_TOKEN>
team_drive =
```

## TODO

- [ ] Link to rclone documentation for setup process


