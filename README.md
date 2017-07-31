# Github Fast Forward

Automatically Add Upstream Branch & Rebase Current Branch

* Check if `upstream` is a defined remote for this repo
* If not, ping the github API to get the fork's parent, add as `upstream`
* Fetch upstream
* Rebase current branch from `upstream/BRANCH`
