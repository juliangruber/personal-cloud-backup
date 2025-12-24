# Personal Cloud Backup

There are cloud service you use, either because they make your life easier than self hosting, or because there are no alternatives. In order to keep some ownership of your data, periodically your data up to cold storage, like [Scaleway Glacier](https://www.scaleway.com/en/glacier-cold-storage/). After implementing personal cloud backups, a cloud provider can disappear, or lose your data, and you can recover and move to a different solution.

This repository contains a bunch of scripts and tutorials for different cloud data sources.
The idea is for everyone to add and collaborate on sources, covering their personal backup needs, so that this becomes an exhaustive resource for personal cloud backups.

I have these scripts run weekly from a small hetzner server, using crontab, but you could also use GitHub actions or any other service you trust with your private data.

## Requirements

All sources require:

- [Rclone](https://rclone.org/)

You also need to set up at least one `rclone` destination, to back up your files to. I personally use Scaleway Glacier using the [Rclone S3 integration](https://rclone.org/s3/#scaleway).

Individual sources might come with their own requirements.

## Sources

- [CalDav](./caldav.md)
- [FTPS](./ftps.md)
- [GitHub](./github.md)
- [Google Drive](./google-drive.md)
- [IMAP](./imap.md)
- [MySQL](./mysql.md)
- [SFTP](./sftp.md)

Pull requests welcome!

## Meta Sources

- [CronTab](./crontab.md)

## Roadmap

- [ ] Encryption
- [ ] Sources
  - [ ] Bluesky
  - [x] CalDav
  - [x] Cron
  - [x] FTPS
  - [x] GitHub
  - [x] Google Drive
  - [ ] Google Notes
  - [x] IMAP
  - [ ] Mastodon
  - [x] MySQL
  - [x] SFTP
  - [ ] XMPP
- [ ] Dockerize

Pull requests welcome!

## License

Copyright 2025 Julian Gruber <mail@juliangruber.com>

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the “Software”), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

