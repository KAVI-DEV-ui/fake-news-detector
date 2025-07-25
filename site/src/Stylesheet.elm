module Stylesheet exposing (..)

import Color exposing (..)
import Style exposing (..)
import Style.Background as Background
import Style.Border as Border
import Style.Color as Color
import Style.Font as Font
import Style.Shadow as Shadow


type Classes
    = NoStyle
    | General
    | Button
    | BlueButton
    | Overlay
    | Popup
    | Title
    | Subtitle
    | CloseButton
    | VoteEmoji
    | ErrorMessage
    | UrlInput
    | TwitterButton
    | TwitterIcon
    | Card


stylesheet : Style.StyleSheet Classes variation
stylesheet =
    styleSheet
        [ style NoStyle []
        , style General
            [ -- source: https://www.smashingmagazine.com/2015/11/using-system-ui-fonts-practical-guide/
              Font.typeface (List.map Font.font [ "-apple-system", "BlinkMacSystemFont", "Segoe UI", "Roboto", "Oxygen", "Ubuntu", "sans-serif" ])
            , Font.size 14
            , Font.lineHeight 1.5
            ]
        , style Button
            [ Color.text (rgb 75 79 86)
            , Border.all 1
            , Color.background (rgb 246 247 249)
            , Color.border (rgb 206 208 212)
            , hover
                [ Color.background (rgb 233 235 238)
                , Color.border (rgb 75 79 86)
                ]
            ]
        , style BlueButton
            [ Color.text white
            , Color.background (rgb 66 103 178)
            , Border.rounded 2
            , pseudo "active"
                [ Color.background (rgb 46 83 158)
                ]
            ]
        , style VoteEmoji
            [ Font.size 22
            ]
        , style Overlay
            [ Color.background (rgba 0 0 0 0.2)
            ]
        , style Popup
            [ Color.background white
            , Border.all 1
            , Border.rounded 3
            , Color.border (rgb 229 229 229)
            , Shadow.box
                { offset = ( 0, 0 )
                , size = 2
                , blur = 26
                , color = rgba 0 0 0 0.3
                }
            ]
        , style Title
            [ Font.size 30
            ]
        , style Subtitle
            [ Font.size 22
            ]
        , style CloseButton
            [ Font.size 18
            , Color.text grey
            , Font.weight 300
            , Color.background white
            , hover
                [ Color.text darkGrey
                ]
            ]
        , style ErrorMessage
            [ Color.border (rgb 245 198 203)
            , Color.background (rgb 248 215 218)
            , Color.text (rgb 114 28 36)
            , Border.all 1
            , Border.rounded 3
            ]
        , style UrlInput
            [ Border.all 1
            , Color.border (rgb 200 200 200)
            ]
        , style TwitterIcon
            [ Background.image "data:image/svg+xml,%3Csvg%20xmlns%3D%22http%3A%2F%2Fwww.w3.org%2F2000%2Fsvg%22%20viewBox%3D%220%200%2072%2072%22%3E%3Cpath%20fill%3D%22none%22%20d%3D%22M0%200h72v72H0z%22%2F%3E%3Cpath%20class%3D%22icon%22%20fill%3D%22%23fff%22%20d%3D%22M68.812%2015.14c-2.348%201.04-4.87%201.744-7.52%202.06%202.704-1.62%204.78-4.186%205.757-7.243-2.53%201.5-5.33%202.592-8.314%203.176C56.35%2010.59%2052.948%209%2049.182%209c-7.23%200-13.092%205.86-13.092%2013.093%200%201.026.118%202.02.338%202.98C25.543%2024.527%2015.9%2019.318%209.44%2011.396c-1.125%201.936-1.77%204.184-1.77%206.58%200%204.543%202.312%208.552%205.824%2010.9-2.146-.07-4.165-.658-5.93-1.64-.002.056-.002.11-.002.163%200%206.345%204.513%2011.638%2010.504%2012.84-1.1.298-2.256.457-3.45.457-.845%200-1.666-.078-2.464-.23%201.667%205.2%206.5%208.985%2012.23%209.09-4.482%203.51-10.13%205.605-16.26%205.605-1.055%200-2.096-.06-3.122-.184%205.794%203.717%2012.676%205.882%2020.067%205.882%2024.083%200%2037.25-19.95%2037.25-37.25%200-.565-.013-1.133-.038-1.693%202.558-1.847%204.778-4.15%206.532-6.774z%22%2F%3E%3C%2Fsvg%3E"
            ]
        , style TwitterButton
            [ Color.background (rgb 27 149 224)
            , Color.text (rgb 255 255 255)
            , Border.rounded 5
            , Font.size 13
            ]
        , style Card
            [ Shadow.box
                { offset = ( 0, 0 )
                , size = 1
                , blur = 4
                , color = rgba 0 0 0 0.1
                }
            , Border.all 1
            , Border.rounded 5
            , Color.border (rgb 229 229 229)
            ]
        ]
