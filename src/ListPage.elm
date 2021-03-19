module ListPage exposing (..)
import Html exposing (Html, div, text)
import MessageSPA exposing (..)


type alias ListModel =
    {
     description: String
    }


update : Message -> ListModel -> ListModel
update msg model = model


view : ListModel -> Html Message
view model =  div[] [text model.description]
