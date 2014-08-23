# How to

1. put your cards in `app/assets/images/cards`

2. run `bundle` to install dependencies

3. start the server with `rails server`

4. visit http://localhost:3000/all.pdf to see all your cards

5. visit http://localhost:3000/generate.pdf to see a one-page minglo

6. visit http://localhost:3000/generate.pdf?pages=5 to see a 5-page minglo or replace 5 by any (integer) number

# Notes

- the name of the card file is used as title (without its extension)
- only these (case-insensitive) extensions are allowed for the cards: gif, jpg, jpeg and png
