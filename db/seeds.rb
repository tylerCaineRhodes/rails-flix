# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

Movie.create!([
  {
    title: 'Avengers: Endgame',
    description:
    %{
      After the devastating events of Avengers: Infinity War, the universe
      is in ruins. With the help of remaining allies, the Avengers assemble
      once more in order to undo Thanos' actions and restore order to the universe.
    }.squish,
    released_on: "2019-04-26",
    rating: 'PG-13',
    total_gross: 1_223_641_414,
    director: 'Anthony Russo',
    duration: '181 min',
  },
  {
    title: 'Captain Marvel',
    description:
    %{
      Carol Danvers becomes one of the universe's most powerful heroes when Earth is caught in the middle of a galactic war between two alien races.
    }.squish,
    released_on: "2019-03-08",
    rating: 'PG-13',
    total_gross: 1_110_662_849,
    director: 'Anna Boden',
    duration: '124 min',
  },
  {
    title: 'Black Panther',
    description:
    %{
      T'Challa, heir to the hidden but advanced kingdom of Wakanda, must step forward to lead his people into a new future and must confront a challenger from his country's past.
    }.squish,
    released_on: "2018-02-16",
    rating: 'PG-13',
    total_gross: 1_346_913_161,
    director: 'Ryan Coogler',
    duration: '134 min',
  },
  {
    title: 'Avengers: Infinity War',
    description:
    %{
      The Avengers and their allies must be willing to sacrifice all in an attempt to defeat the powerful Thanos before his blitz of devastation and ruin puts an end to the universe.
    }.squish,
    released_on: "2018-04-27",
    rating: 'PG-13',
    total_gross: 2_048_359_754,
    director: 'Anthony Russo',
    duration: '149 min',
  },
  {
    title: 'Green Lantern',
    description:
    %{
      Reckless test pilot Hal Jordan is granted an alien ring that bestows him with otherworldly powers that inducts him into an intergalactic police force, the Green Lantern Corps.
    }.squish,
    released_on: "2011-06-17",
    rating: 'PG-13',
    total_gross: 219_851_172,
    director: 'Martin Campbell',
    duration: '114 min',
  },
  {
    title: 'Fantastic Four',
    description:
    %{
      Four young outsiders teleport to an alternate and dangerous universe which alters their physical form in shocking ways. The four must learn to harness their new abilities and work together to save Earth from a former friend turned enemy.
    }.squish,
    released_on: "2015-08-07",
    rating: 'PG-13',
    total_gross: 168_257_860,
    director: 'Josh Trank',
    duration: '100 min',
  },
  {
    title: 'Iron Man',
    description:
    %{
      When wealthy industrialist Tony Stark is forced to build an
      armored suit after a life-threatening incident, he ultimately
      decides to use its technology to fight against evil.
    }.squish,
    released_on: "2008-05-02",
    rating: 'PG-13',
    total_gross: 585_366_247,
    director: 'Jon Favreau',
    duration: '126 min',
  },
  {
    title: 'Superman',
    description:
    %{
      An alien orphan is sent from his dying planet to Earth, where
      he grows up to become his adoptive home's first and greatest
      super-hero.
    }.squish,
    released_on: "1978-12-15",
    rating: 'PG',
    total_gross: 300_451_603,
    director: 'Richard Donner',
    duration: '143 min',
  },
  {
    title: 'Spider-Man',
    description:
    %{
      When bitten by a genetically modified spider, a nerdy, shy, and
      awkward high school student gains spider-like abilities that he
      eventually must use to fight evil as a superhero after tragedy
      befalls his family.
    }.squish,
    released_on: "2002-05-03",
    rating: 'PG-13',
    total_gross: 825_025_036,
    director: 'Sam Raimi',
    duration: '121 min',
  },
  {
    title: 'Batman',
    description:
    %{
      The Dark Knight of Gotham City begins his war on crime with his
      first major enemy being the clownishly homicidal Joker.
    }.squish,
    released_on: "1989-06-23",
    rating: 'PG-13',
    total_gross: 411_348_924,
    director: 'Tim Burton',
    duration: '126 min',
  },
  {
    title: "Catwoman",
    description:
    %{
      Patience Philips seems destined to spend her life apologizing for taking up space. Despite her artistic ability she has a more than respectable career as a graphic designer.
    }.squish,
    released_on: "2004-07-23",
    rating: "PG-13",
    total_gross: 82_102_379,
    director: "Jean-Christophe 'Pitof' Comar",
    duration: "101 min",
  },
  {
    title: "Wonder Woman",
    description:
    %{
      When a pilot crashes and tells of conflict in the outside world, Diana, an Amazonian warrior in training, leaves home to fight a war, discovering her full powers and true destiny.
    }.squish,
    released_on: "2017-06-02",
    rating: "PG-13",
    total_gross: 821_847_012,
    director: "Patty Jenkins",
    duration: "141 min",
  },
  {
    title: "Lost in Translation", 
    rating: "PG-13",
    total_gross: 118700000, 
    description: "A lonely, aging movie star named Bob Harris (Bill Murray) and a conflicted newlywed, Charlotte (Scarlett Johansson), meet in Tokyo. Bob is there to film a Japanese whiskey commercial; Charlotte is accompanying her celebrity-photographer husband. Strangers in a foreign land, the two find escape, distraction and understanding amidst the bright Tokyo lights after a chance meeting in the quiet lull of the hotel bar. They form a bond that is as unlikely as it is heartfelt and meaningful.",
    released_on: "2003-09-09", 
    director: "Sofia Coppola", 
    duration: "104 min", 
  }
])

User.create!([
  {
    name: 'tyler',
    username: 'tynapplepie',
    email: 'rhodetyl000@gmail.com',
    password: 'fakepassword',
    password_confirmation: 'fakepassword',
    admin: true
  },
  {
    name: 'Timothy',
    username: 'fakeTimothyPerson',
    email: 'timothy@timothy.com',
    password: 'fakepassword',
    password_confirmation: 'fakepassword',
  },
  {
    name: 'Dan McGee',
    username: 'movieMan420',
    email: 'danMcGee@awesome.com',
    password: 'fakepassword',
    password_confirmation: 'fakepassword',
  },
])

Review.create!([ 
  {
    user_id: 1,
     stars: 2, 
     comment: "nothing personal, I just really don't like super hero stuff.",
     movie_id: 1
  },
   {
    user_id: 1,
     stars: 5, 
     comment: "One of my all time favorite movies",
     movie_id: 13
  },
  {
    user_id: 1,
    stars: 5, 
    comment: "I like superheroes, my name is Jobie",
    movie_id: 1
  },
])


[
  ["Avengers: Endgame", "avengers-end-game.png"],
  ["Captain Marvel", "captain-marvel.png"],
  ["Black Panther", "black-panther.png"],
  ["Avengers: Infinity War", "avengers-infinity-war.png"],
  ["Green Lantern", "green-lantern.png"],
  ["Fantastic Four", "fantastic-four.png"],
  ["Iron Man", "ironman.png"],
  ["Superman", "superman.png"],
  ["Spider-Man", "spiderman.png"],
  ["Batman", "batman.png"],
  ["Catwoman", "catwoman.png"],
  ["Wonder Woman", "wonder-woman.png"]
].each do | movie_title, file_name |
    movie = Movie.find_by(title: movie_title)
    file = File.open(Rails.root.join("app/assets/images/#{file_name}"))
   movie.main_image.attach(io: file, filename: file_name)
end 