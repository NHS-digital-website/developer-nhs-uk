# NHS Health Developer Network APIs' hub page
> Helping Developers find NHS API documentation through the https://developer.nhs.uk/apis/ hub page.

>![](apple-icon.png)

## Development setup
After cloning this repository you may need to install a SCSS compiler.

If you are using a JetBrains static server, update your '/etc/hosts' file with ```127.0.0.1 developer-nhs-uk```. Then set
the run configuration URL to ```http://developer-nhs-uk:63342/index.html```.

### To update hub page
Simply make edits to ```/apis/index.html```

### To update the CSS
Edit the SCSS files and run your local SCSS compiler. For example on Ubuntu install: 

```
sudo apt install nodejs
sudo apt install npm
sudo npm install -g sass
```

Then ```make build-css``` or ```make build-and-watch-css```.

|Post-compiled CSS, from SCSS, must be committed to Git | 
| --- |
Make sure to commit all post-compiled CSS files because the deployment pipeline does not build the SCSS at this time.

## Branching Strategy
- Begin by create a new feature branch from master.

### UAT (test)
Before creating a Pull Request for master:
1. `git merge` the feature branch into _test_.
2. `git push` _test_.
3. The pushed changes to _test_ will be automatically deployed to the test server.

|Do not merge or rebase the branch named 'test' into master|
| --- |

### Production (master)

1. Once the feature branch is ready for production rebase all of the commits on the feature branch into one commit.
2. Push the feature branch to GitHub and make a Pull Request.
3. Once the Pull Request is approved, press the 'rebase and merge' button that is shown on GitHub. 
4. The changes, to _master_, will then automatically be deployed to the production server.
