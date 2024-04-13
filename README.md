# Self-Push

Like the name suggests, this repository is going to push open itself

at `00:42 UTC` every day, a github action will run to automatically update this repo specifically the log.txt file.
But it seems to work around `05:00 CAT`, Github pro'lly has a lot of traffic around the actually specified time.

# How to use it yourself
You can contribute by just:
- forking the repository
- Adding `USERNAME` and `USER_EMAIL` secrets to the forked repository and setting them to your credentials. ( you can find them in `<repo_url>`/settings/secrets/actions )
- And then just let the script do it's magic.

# Editable things
- Time when the script runs. ( check line 6 of the `.github/workflows/autopush.yaml` file ) https://github.com/IVainqueur/self-push/blob/b7adbbd3d8b8aa0e1dbdc271f8df5197419789ae/.github/workflows/autopush.yaml#L6
- The number of commits per day ( check line 30 in the `.github/workflows/autopush.yaml` file ) https://github.com/IVainqueur/self-push/blob/b7adbbd3d8b8aa0e1dbdc271f8df5197419789ae/.github/workflows/autopush.yaml#L30
