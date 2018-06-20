# README

How to run program

1. Create, migrate and load seed model
rails generate migration CreateSongs name:string brand:string album:string genre:string chord:string
rails db:migrate
rails db:seed

2. Interact with Songs
> Songs.find_c_chord
> Songs.find_the_beatles
> Songs.find_rock
