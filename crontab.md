# crontab

In case you use `cron` to back up your files, you might want to back up the very `crontab` too, using `rclone`.`

## backup command

```console
crontab -l | rclone rcat <RCLONE_DESTINATION>/crontab.txt
```

