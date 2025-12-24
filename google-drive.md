# Google Drive

Here is how to back up your Google Drive via `rclone`.

You can also use [Google Takeout](https://takeout.google.com/) for an export of most of your Google data in one go.

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
