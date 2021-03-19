module MenuPage exposing (..)
import Html exposing (Html, div, text)
import MessageSPA exposing (..)


type alias MenuModel =
    {
    message: String
    }


update : Message -> MenuModel -> MenuModel
update message model = model



view : MenuModel -> Html Message
view model = div [] [text "This is the menu page"]
