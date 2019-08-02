# NHS Health Developer Network APIs' hub page
> Helping Developers find NHS API documentation through the https://developer.nhs.uk/apis/ hub page.

>![](website/apple-icon.png)

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