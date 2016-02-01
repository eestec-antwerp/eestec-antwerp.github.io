# EESTEC LC Antwerpen website source

This is the source code for the website of EESTEC Local Chapter in Antwerpen.
You can see it in action at <http://eestec.be>.
Built with the wonderful [Hugo](http://gohugo.io/).

## Contributing
### Website code changes
Test changes locally by running the server:

    hugo server -D

See them live at <http://localhost:1313>.
When everything works as expected you can (re)build the website with `deploy.sh`.

This updates the website itself, not your current source repository so you can keep
cleanly separated commit histories.
It is best to first run the `deploy.sh` script and then commit all changes to
the source.

### Writing new posts
In the website source root:

    hugo new post/naam.md

Then follow steps for website code changes
