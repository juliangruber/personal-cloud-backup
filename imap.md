# imap

Here is how to back up your IMAP email server via `rclone` and `offlineimap`.

## backup command

```console
offlineimap && rclone sync <OFFLINEIMAP_MAILBOX_FOLDER> <RCLONE_DESTINATION>
```

## offlineimap config

### `~/.offlineimaprc`

```ini
[general]
accounts = <OFFLINEIMAP_ACCOUNT_NAME>

[Account <OFFLINEIMAP_ACCOUNT_NAME>]
localrepository = Local
remoterepository = Remote

[Repository Local]
type = Maildir
localfolders = <OFFLINEIMAP_MAILBOX_FOLDER>
sync_deletes = no

[Repository Remote]
type = IMAP
remotehost = <IMAP_HOSTNAME>
remoteuser = <IMAP_USERNAME>
remotepass = <IMAP_PASSWORD>
sslcacertfile = <IMAP_CERT_PATH>
```

## TODO

- [ ] Don't inline cleartext password
- [ ] Link to `offlineimap` setup instructions
- [ ] Document certificate steps

