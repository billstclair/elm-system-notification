[![elm-package](https://img.shields.io/badge/elm-1.0.0-blue.svg)](http://package.elm-lang.org/packages/billstclair/elm-system-notification/latest)

`billstclair/elm-system-notification` is an Elm interface to the [Notifications API](https://developer.mozilla.org/en-US/docs/Web/API/Notifications_API). It allows your application to request permission to create system notifications, and, if granted, create them.

Notifications don't work from localhost in Chrome, so don't be surprised if you don't see them when running from `elm reactor`.

See the "example" directory for a simple use case.

In order to use it, your top-level program needs to have a port with which to communicate with the JavaScript code:

    port notify : NotifyPort
    
You need to compile your program to a site directory:

    elm make Main.elm --output site/index.js
    
And you need a top-level HTML file similar to [site/index.html](https://github.com/billstclair/elm-system-notification/blob/master/site/index.html).

Bill St. Clair<br/>
12 July 2018
