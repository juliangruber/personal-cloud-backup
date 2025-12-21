# github

Here is how to back up your GitHub repositories via `rclone` and Node.js.

## backup command

```console
node github-list-repos.js | xargs -I{} sh -c 'echo {} && rclone copyurl https://github.com/<GITHUB_USERNAME>/{}/zipball/HEAD <RCLONE_DESTINATION>/{}.zip'
```

## backup scripts

### `github-list-repos.js`

```js
import { Octokit } from "octokit";

const octokit = new Octokit({
  auth: "<GITHUB_PAT>"
});

for await (const { data: repos } of octokit.paginate.iterator("GET /users/{owner}/repos", {
  owner: "<GITHUB_USERNAME>",
  per_page: 100,
  headers: {
    "X-GitHub-Api-Version": "2022-11-28",
  },
})) {
  for (const repo of repos) {
    console.log(repo.name)
  }
}
```

### `package.json`

```json
{
  "type": "module",
  "dependencies": {
    "octokit": "^5.0.3"
  }
}
```

Run `npm install` in the script directory to install dependencies.

## TODO

- [ ] Document how to get personal access token
- [ ] Publish command to `npm`, use `npx` (but, requires more trust)
- [ ] Pass GitHub username once, as env var


