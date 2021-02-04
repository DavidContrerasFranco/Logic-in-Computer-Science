/* Einstein's riddle */

/* 5 houses in 5 different colours */
/* Each house lives a person with a different nationality */
/* These five owner drink a certain type of beverage, smokea certaien brand of cigar and keep a certain pet */
/* No owners have the same pet, smoke the same brand of cigar or drink the same beverage. */

/* Who owns the fish? */

/* house(Nationality, Color, Pet, Beverage, Cigar). */
rightTo(X, Y) :- X is Y + 1.
leftTo(X, Y) :- rightTo(Y, X).

nextTo(X, Y) :- rightTo(X, Y) ; leftTo(X, Y).

riddle(Houses, FishOwner) :-
    Houses = [
              house(1, Nationality1, Color1, Cigar1, Beverage1, Pet1),
              house(2, Nationality2, Color2, Cigar2, Beverage2, Pet2),
              house(3, Nationality3, Color3, Cigar3, Beverage3, Pet3),
              house(4, Nationality4, Color4, Cigar4, Beverage4, Pet4),
              house(5, Nationality5, Color5, Cigar5, Beverage5, Pet5)
	     ],

    member(house(_, brit,      red,    _,          _,      _    ), Houses),
    ...
    member(house(_, FishOwner, _,      _,          _,      fish ), Houses).




