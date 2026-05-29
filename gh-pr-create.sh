#!/bin/sh
TITLE='Upstream PRs 1854'
BODY='This PR syncs the following upstream PRs:
 * bitcoin-core/secp256k1#1854: tests: compare full MuSig aggregate nonce

Usage hints:
 * If this PR has merge conflicts, resolve these by switching to the PR branch and merging the base branch into it using `git merge <base-branch>`.
 * To show the conflict resolution diff from an existing merge commit, use `git show --remerge-diff <merge-commit>`.
 * In case you'\''re recreating the PR branch locally, you can (during the conflict resolution state) replay this conflict resolution diff using `git read-tree --reset -u <merge-commit>`.
   Be aware that this may discard your index as well as the uncommitted changes and untracked files in your worktree.'
SYNC_BRANCH='sync-8363a2d8'
BASE_BRANCH='master'

gh pr create --base "$BASE_BRANCH" --head "$SYNC_BRANCH" --title "$TITLE" --body "$BODY" "$@"
