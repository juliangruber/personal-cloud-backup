# Google Drive

Here is how to back up your Google Drive via `rclone`.

## Backup command

```console
rclone sync <RCLONE_SOURCE_NAME>: <RCLONE_DESTINATION>
```

## Rclone config

```ini
[<RCLONE_SOURCE_NAME>]
type = drive
client_id = <GOOGLE_CLIENT_ID> 
client_secret = <GOOGLE_CLIENT_SECRET>
scope = drive.readonly
token = <GOOGLE_TOKEN>
team_drive =
```

See https://rclone.org/drive/ for documentation.
