# Jekyll + netlify CMS

This is the basic Jekyll starter site, with netlify CMS integrated.

## Getting Started

Clone this repository to your local machine, then download the relevant release of
the [netlify-git-api](https://github.com/netlify/netlify-git-api/releases) CLI tool.

CD into your new repo, and run:

```bash
netlify-git-api users add
netlify-git-api serve
```

Then open a new terminal, CD into your new repo and run:

```bash
bundle install
bundle exec jekyll server --watch
```

Now navigate to [localhost:4000](http://localhost:4000/) to preview the site, and
to [localhost:4000/admin](http://localhost:4000/admin) to log into the CMS.

## Deploying to production

To deploy to production, make sure to push this repository to a Github repo you own.

Then go to [netlify](https://app.netlify.com) and start a new project. Pick your
new Github repository. Netlify should fill out the build command and public folder
(`jekyll build` and `/_site`), but make sure you set an environment variable:

`JEKYLL_ENV=production`

Build and deploy the site.

Now go to [the GitHub developer application screen](https://github.com/settings/developers)
and **register new application**.

Once you've setup the application, go back to netlify, navigate to the **Access** tab. Then
fill in your new Client ID and Client Secret in the Github Authentication Provider and check
the **Enable GitHub** box.

Now anybody with write access to your GitHub repository can log in at yoursite.netlify.com/admin
and use the CMS.

**Enjoy!**

## Bug reports, feature requests, etc

We love feedback, contributions, better documentation, tutorials, general comments,
random hatemail, rants, love, crazy ideas, etc, etc!

Contact us at [any of netlify's normal channels](https://www.netlify.com/contact) and
open issues or pull requests at [the netlify-cms GitHub repo](https://github.com/netlify/netlify-cms)
