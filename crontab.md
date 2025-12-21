# Crontab

In case you use `cron` to back up your files, you might want to back up the very `crontab` too, using `rclone`.`

## Backup Command

```console
crontab -l | rclone rcat <RCLONE_DESTINATION>/crontab.txt
```

