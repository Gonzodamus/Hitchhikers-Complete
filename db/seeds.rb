# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


bp = Planet.create(name: "Betelgeuse IV", climate: "Jungle", size: 5, description: "A tropical planet where visitors seem to pick up the strange habit of saying 'No, not the movie'")
fp = Planet.create(name: "Flatironia", climate: "Temperate", size: 3, description: "A heavily populated metropolis planet with wildly fluctuating temperatures. The only planet in the known universe that is populated entirely by nerds.")
ip = Planet.create(name: "Ice Creamatoria", climate: "Frigid", size: 4, description: "The denizens have historically been wary of strangers, and for good reason: they are immensely delicious.")
ep = Planet.create(name: "Earth", climate: "Temperate", size: 3, description: "Voted 'Most Ordinary Planet' by readers of Universal Digest. Extraordinary only its extreme level of ordinariness.")

fc = AlienRace.create(name: "Fruitus cherrius", biome: "Mountains/High elevations", demeanor: "Arrogant", description: "It is unknown whether their belief that their race deserves to be on top is cultural or biological.")
sc = AlienRace.create(name: "Syrupus chocolatus", biome: "Variable", demeanor: "Free spirited", description: "They go where the land takes them.")
hs = AlienRace.create(name: "Homo sapien", biome: "Temperate", demeanor: "Depends", description: "It has long been debated whether they should have come down from the trees at all.")
fg = AlienRace.create(name: "Felis grumpius", biome: "Not happy anywhere", demeanor: "Peeved", description: "'No.'")
sd = AlienRace.create(name: "Studious developoris", biome: "Chairs/Desks", demeanor: "Caffeine crazed", description: "Given their preferred biome, it is no wonder they are constantly suffering from back pain.")
ac = AlienRace.create(name: "Avius colorfulus", biome: "Jungle", demeanor: "Hungry", description: "Named by a naturalist with a sense of humor, they are neither avian nor colorful.")
ac2 = AlienRace.create(name: "Ambiguity certaintus", biome: "Valleys/Not valleys", demeanor: "Humorous/Humorless", description: "They are often described as a cross between a pig and a football, but this is a terrible description.")

Population.create(planet: bp, alien_race: fg, size: 100000, extinct: false)
Population.create(planet: bp, alien_race: ac, size: 15000, extinct: false)
Population.create(planet: fp, alien_race: sd, size: 5000000, extinct: false)
Population.create(planet: fp, alien_race: sc, size: 60000, extinct: false)
Population.create(planet: ip, alien_race: fc, size: 200, extinct: false)
Population.create(planet: ip, alien_race: sc, size: 50000, extinct: false)
Population.create(planet: ip, alien_race: hs, size: 0, extinct: true)
Population.create(planet: ep, alien_race: hs, size: 7000000, extinct: false)
Population.create(planet: ep, alien_race: sd, size: 1000, extinct: false)
Population.create(planet: ep, alien_race: ac, size: 0, extinct: true)