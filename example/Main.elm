----------------------------------------------------------------------
--
-- Main.elm
-- Example of using billstclair/elm-system-notification
-- Copyright (c) 2018 Bill St. Clair <billstclair@gmail.com>
-- Some rights reserved.
-- Distributed under the MIT License
-- See LICENSE.txt
--
----------------------------------------------------------------------


port module Main exposing (..)

import Html exposing (Html, button, text)
import Html.Events exposing (onClick)
import SystemNotification exposing (NotifyPort, createNotification)


port notify : NotifyPort msg


type Msg
    = Notify


type alias Model =
    ()


main =
    Html.program
        { init = () ! []
        , view = view
        , update = update
        , subscriptions = \model -> Sub.none
        }


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        Notify ->
            model
                ! [ createNotification notify
                        "You've been notified."
                        (Just "Look at my beautiful body!")
                        (Just "https://kakuro-dojo.com/images/elm-logo-125x125.png")
                  ]


view : Model -> Html Msg
view model =
    button [ onClick Notify ]
        [ text "Notify" ]
