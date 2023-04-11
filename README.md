# Jekyll + Decap CMS with Netlify Identity

This is the basic Jekyll starter site, with Decap CMS integrated and using Netlify Identity for
authentication.

## Getting started

Use our deploy button to get your own copy of the repository:

[![Deploy to Netlify](https://www.netlify.com/img/deploy/button.svg)](https://app.netlify.com/start/deploy?repository=https://github.com/netlify-templates/jekyll-netlify-cms&stack=cms)

This will setup everything needed for running the CMS:

* A new repository in your GitHub account with the code
* Full Continuous Deployment to Netlify's global CDN network
* Control users and access with Netlify Identity
* Manage content with Decap CMS

The email address associated with your Netlify account will receive an email inviting you as an
Identity user - click Accept in the email to set your new password, then navigate to `/admin` on
your site to log in.

Now you're all set, and you can start editing content!

**Note:** if you switch the repo that was created to private, you'll need to regenerate your token,
as the token generated using the deploy to Netlify button can only access public repositories. To
regenerate your token, head to "Settings" in your Netlify site dashboard, go to the "Identity"
section, then scroll to "Services" where you'll see an "Edit settings" button. Click that and you'll
see a text link to "Generate access token in GitHub".

## Local Development

Clone this repository and run:

```bash
bundle install
bundle exec jekyll server --watch
```

Now navigate to [localhost:4000](http://localhost:4000/) to preview the site, and
[localhost:4000/admin](http://localhost:4000/admin) to log into the CMS.

## Authenticating without Netlify Identity

Netlify provides basic OAuth so you can log in to Decap CMS with your GitHub profile directly if
you prefer not to use Netlify Identity. To do so, go to [the GitHub developer application
screen](https://github.com/settings/developers) and **register new application**. The Authorization
callback URL you'll need to enter is `https://api.netlify.com/auth/done`. 

Once you've set up the application, go back to your Netlify site dashboard, navigate to the
**Access** tab. Then fill in your new Client ID and Client Secret in the Github Authentication
Provider section and check the **Enable GitHub** box.

You'll then need to update the `backend` settings at the top of the `admin/config.yml` file in your
site repo:

```yaml
backend:
  name: github
  repo: username/repo # your GitHub username and repository name, separated by a slash
  branch: master # optional, default value is "master"
```

Now anybody with write access to your GitHub repository can log in at yoursite.netlify.com/admin
and use the CMS.

**Enjoy!**

## Bug reports, feature requests, etc

We love feedback, contributions, better documentation, tutorials, general comments,
random hatemail, rants, love, crazy ideas, etc, etc!

Contact us at [any of netlify's normal channels](https://www.netlify.com/contact) and
open issues or pull requests for Netlify CMS at [the netlify-cms GitHub
repo](https://github.com/netlify/netlify-cms). If you need realtime help with setting up Netlify
CMS, you can reach out in the [Netlify CMS Gitter](https://gitter.im/netlify/netlifycms).
