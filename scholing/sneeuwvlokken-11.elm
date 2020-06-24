-- sneeuwvlokken-11 -- haal plaatje uit model
module Main exposing(..)

import Browser
import Html exposing (div, text, input, button, Html)
import Html.Attributes exposing (placeholder, value)
import Html.Events exposing (onInput, onClick)
import String exposing (join, repeat)
import List exposing(map)
import Maybe
import Svg exposing (svg, polyline, g)
import Svg.Attributes exposing (..)

-------------- ALGEMENE DEFINITIES ------------------------

--------- TEKENEN --------

type alias Point = { x: Float, y: Float }

point2String : Point -> String
point2String p = String.fromFloat p.x ++ "," ++ String.fromFloat p.y


mypolyline kleur punten =
    let puntenstring = punten |> map point2String |> String.join " "
    in
    polyline [ fill "none", stroke kleur, points puntenstring ] [ ]

--================= SHOWTIME ==========================

main = Browser.sandbox { init = myinit, view = myview, update = myupdate }

------------------- MODEL -----------------------------

type alias Model = { naam: String, aantal: Int, hoekpunten: (Point, Point, Point)  }

myinit : Model
myinit = { naam = "Klaas", aantal = 3,
           hoekpunten = (Point 50 300, Point 200 75, Point 350 300) }

------------------- VIEW -----------------------------

myview: Model -> Html Msg
myview model =
  let
    -- plaatje = [ polyline [ stroke "blue", points "10, 10 30, 30" ] [ ] ]
    (p1, p2, p3) = model.hoekpunten
    plaatje = [ mypolyline "blue" [p1, p2, p3, p1] ]
  in
  div []
    [
        div [ ] [ Html.b [] [ text (repeat model.aantal "Hoi, ")], text model.naam  ]
      , input [ placeholder "uw naam",  onInput Naam ] [ ]
      , button [ onClick Meer ] [ text "MEER" ]
      , svg [ viewBox "0 0 400 400", width "800px"]
        [ Svg.g [ ] plaatje ]
    ]

------------------- UPDATE -----------------------------

type Msg
  = Naam String
  | Meer

myupdate: Msg -> Model -> Model
myupdate msg model =
  case msg of
    Naam n -> { model | naam = n }
    Meer   -> { model | aantal = model.aantal + 1 }
