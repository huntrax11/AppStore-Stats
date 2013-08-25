[AppStore Sales Stat Downloader][1]
======================

AppStore Slaes Stat Downloader, Yes it is.

It just wraps [Apple's Auto-Ingestion tool][2] up, and make it easy to use.

To run it open conf.properties first and fill it up.

    userID=<iTunes Connect USERID>
    password=<iTunes Connect Password>
    vendorID=<Vendor ID>
    savingPath=<Where to put sales stat data>

And you can run it manually as follow.

    $ bash download.sh
    Trying to fetch 20130824
    S_D_85381067_20130824.txt.gz
    File Downloaded Successfully
    Report of 20130823 is already exist
    … blah blah …

Personnally, I'm using it with crontab like

    TZ=US/Pacific
    8 * * * *	bash /PATH-TO-THIS-DIRECTORY/download.sh

[1]: https://github.com/huntrax11/AppStore-Stats
[2]: http://www.apple.com/itunesnews/docs/Autoingestion.class.zip
