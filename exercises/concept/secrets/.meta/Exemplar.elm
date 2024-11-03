module Secrets exposing (..)

import Bitwise exposing (..)


shiftBack amount value =
    Bitwise.shiftRightZfBy amount value


setBits mask value =
    Bitwise.or mask value


flipBits mask value =
    Bitwise.xor mask value


clearBits mask value =
    mask
    |> Bitwise.complement
    |> Bitwise.and value
