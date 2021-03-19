module TesterSPA exposing (..)
import Html exposing (Html, div, text)
import MenuPage as Menu exposing (..)
import ListPage as List exposing (..)
import Browser
import MessageSPA exposing (..)

main = Browser.element
    {init = init
    ,update = update
    ,view = view
    ,subscriptions = subscriptions
    }


type MainModel
    = MenuModel MenuModel
    | ListModel ListModel
    | Empty



init : () -> (MainModel, Cmd Message)
init _ = (Empty, Cmd.none)

update : Message -> MainModel -> (MainModel, Cmd Message)
update msg model =
        case model of
            MenuModel menu -> (MenuModel (Menu.update msg menu),Cmd.none)
            ListModel list -> (ListModel (List.update msg list),Cmd.none)
            Empty -> (model, Cmd.none)


view : MainModel -> Html Message
view model =
    case model of
        MenuModel menu -> Menu.view menu
        ListModel list -> List.view list
        Empty -> div [][text "Nothing found"]


subscriptions : MainModel -> Sub Message
subscriptions _ = Sub.none
