module Employee exposing (..)

import Json.Decode as Decode
import Json.Encode as Encode



type alias Employee =
    {
     id  : Int
    ,name: String
    ,email: String
    ,phone: Int
    }


employeeDecoder: Decode.Decoder Employee
employeeDecoder =
       Decode.map4 Employee
       (Decode.field "id" Decode.int)
       (Decode.field "name" Decode.string)
       (Decode.field "email" Decode.string)
       (Decode.field "phone" Decode.int)

encodeEmployee : Employee -> Encode.Value
encodeEmployee employee=
    Encode.object
        [("name", Encode.string employee.name)
        ,("email", Encode.string employee.email)
        ,("phone", Encode.int employee.phone)]

allEmployeesDecoder: Decode.Decoder (List Employee)
allEmployeesDecoder =
    Decode.list employeeDecoder


