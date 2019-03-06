## Basic stuff

Consult [Cooking V6 spreadsheet](https://docs.google.com/spreadsheets/d/1-21XaN8wVH1KAmeyv-jwfOIzZemYQU1a7ywgd6VgqfA/edit#gid=0) for the latest update on V6 cookbooks.

- Use account `EngineyardCookbooksQA` for testing 
- Use `US East (N. Virginia)` region
- Use `TODO` app. This app requires DB, use MySQL
- Use `stable-v6 1.0` stack
- Use both `deploy` and no `deploy` as SSH Username



*REMEMBER TO STOP/TERMINATE YOUR INSTANCES ONCE TESTING IS DONE*

## NOT available - WIP

Avoid booting environments with the following settings as they're still WIP:

- PostgreSQL


## Ready to commit changes?

Clone this repo:

```
git clone https://github.com/engineyard/ey-cookbooks-dev-v6
cd ey-cookbooks-dev-v6
```

Create new branch and checkout:

```
git branch <new-branch>
git checkout <new-branch>
```

**STOP! Make changes to files before proceeding to next step**

Push/commit/push:

```
git push -u origin <new-branch>
git commit -a -m "helpful message" 
git push
```

Create Pull Request:

- This has to be done against `next-release` branch
- Ping Dimitris to merge


 

## Info - Help
For any issue you may encounter reach the following people:

1. Dimitris Dalianis
2. Johann Fueschl
3. Christopher Rigor




 