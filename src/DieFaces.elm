module DieFaces exposing (dotLocations)

{-| This very small library provides face dot locations for a 6-sided die.

It is expected that this library will be used with svg or similar, but I don't
want to either restrict usage to svg, or pull in possibly unnecessary
dependencies.

@docs dotLocations

-}

{-| Given a number between one and six, returns a list of points to draw that
face of a die. Example usage (assuming Svg and Svg.Attributes are imported):

    faceMapper : (Float, Float) -> Svg Msg
    faceMapper (x, y) =
      circle
        [ cx (toString x)
        , cy (toString y)
        , r "0.05"
        ] []

    dieFace : Int -> Svg Msg
    dieFace face =
      svg
        [ width "100"
        , height "100"
        , viewBox "0 0 1 1"
        ]
        dieFace face

with `face = 2` would give

```html
<svg width="100" height="100" viewBox="0 0 1 1">
  <circle cx="0.5" cy="0.3" r="0.05" />
  <circle cx="0.5" cy="0.7" r="0.05" />
</svg>
```

-}
dotLocations : Int -> List (Float, Float)
dotLocations val =
  case val of
    1 ->
      [ (0.5, 0.5)
      ]
    2 ->
      [ (0.5, 0.3)
      , (0.5, 0.7)
      ]
    3 ->
      [ (0.5, 0.25)
      , (0.5, 0.5)
      , (0.5, 0.75)
      ]
    4 ->
      [ (0.3, 0.3)
      , (0.3, 0.7)
      , (0.7, 0.3)
      , (0.7, 0.7)
      ]
    5 ->
      [ (0.3, 0.3)
      , (0.3, 0.7)
      , (0.7, 0.3)
      , (0.7, 0.7)
      , (0.5, 0.5)
      ]
    6 ->
      [ (0.3, 0.25)
      , (0.3, 0.5)
      , (0.3, 0.75)
      , (0.7, 0.25)
      , (0.7, 0.5)
      , (0.7, 0.75)
      ]

    _ ->
      []


