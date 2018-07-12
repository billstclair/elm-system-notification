Example for [billstclair/elm-system-notification](http://package.elm-lang.org/packages/billstclair/elm-system-notification/latest).

To compile "Main.elm" into "../site/index.js":

    cd .../elm-system-notification/example
    bin/build-site
    
Then aim your browser at "../site/index.html".

The page shows a single "Notify" button. Click it to request permission for notifications, and, if given, create a notification.

If your browser is Chrome, you'll need to upload the "site" directory to a real web server, or the notifications will not appear.
