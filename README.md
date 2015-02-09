# Website voor EESTEC LC Antwerpen

This is the source code for the website of EESTEC Local Chapter in Antwerpen.
Built with the wonderful [Hugo](http://gohugo.io/).


## Artikels maken/bewerken

Een nieuw artikel maken/bewerken gaat als volgt:

    git checkout hugo
    hugo new naam.md # enkel voor nieuwe artikels, obviously
    edit ./content/naam.md
    # check verandering eerst, zie beneden
    ./update.sh

**update.sh** zal het artikel in git zetten, de website bouwen, en de master branch
updaten, zodat ook github pages de verandering ziet.


## Testen

Om een verandering te testen:

    hugo server --theme=herring-cove --buildDrafts --watch
