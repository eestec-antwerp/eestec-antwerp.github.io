# Artikels maken/bewerken

Een nieuw artikel maken/bewerken gaat als volgt:

    git checkout hugo
    hugo new naam.md # enkel voor nieuwe artikels, obviously
    edit ./content/naam.md
    ./update.sh

**update.sh** zal het artikel in git zetten, de website bouwen, en de master branch
updaten, zodat ook github pages de verandering ziet.