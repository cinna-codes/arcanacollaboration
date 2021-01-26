# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Spread.create(title: "Through the Hourglass", desc: "The first card represents the past; the second, the present; and the third is the future.", num_of_cards: 3)
Spread.create(title: "Abbreviated Horseshoe", desc: "First: influences & circumstances. Second: best course of action & possible outcomes. Third: final outcome.", num_of_cards: 3)
Spread.create(title: "Troubleshooting", desc: "Nature of your problem / Cause / Solution.", num_of_cards: 3)

Card.create(name: "The Fool", keywords: "Upright: [text] Reversed: [text]", desc: "[desc text]", suit: "Major")
Card.create(name: "The Magician", keywords: "Upright: [text] Reversed: [text]", desc: "[desc text]", suit: "Major")
Card.create(name: "The High Priestess", keywords: "Upright: [text] Reversed: [text]", desc: "[desc text]", suit: "Major")
Card.create(name: "The Empress", keywords: "Upright: [text] Reversed: [text]", desc: "[desc text]", suit: "Major")
Card.create(name: "The Emperor", keywords: "Upright: [text] Reversed: [text]", desc: "[desc text]", suit: "Major")
Card.create(name: "The Hierophant", keywords: "Upright: [text] Reversed: [text]", desc: "[desc text]", suit: "Major")
Card.create(name: "The Lovers", keywords: "Upright: [text] Reversed: [text]", desc: "[desc text]", suit: "Major")
Card.create(name: "The Chariot", keywords: "Upright: [text] Reversed: [text]", desc: "[desc text]", suit: "Major")
Card.create(name: "Justice", keywords: "Upright: [text] Reversed: [text]", desc: "[desc text]", suit: "Major")
Card.create(name: "The Hermit", keywords: "Upright: [text] Reversed: [text]", desc: "[desc text]", suit: "Major")
Card.create(name: "Wheel of Fortune", keywords: "Upright: [text] Reversed: [text]", desc: "[desc text]", suit: "Major")
Card.create(name: "Strength", keywords: "Upright: [text] Reversed: [text]", desc: "[desc text]", suit: "Major")
Card.create(name: "The Hanged Man", keywords: "Upright: [text] Reversed: [text]", desc: "[desc text]", suit: "Major")
Card.create(name: "Death", keywords: "Upright: [text] Reversed: [text]", desc: "[desc text]", suit: "Major")
Card.create(name: "Temperance", keywords: "Upright: [text] Reversed: [text]", desc: "[desc text]", suit: "Major")
Card.create(name: "The Devil", keywords: "Upright: [text] Reversed: [text]", desc: "[desc text]", suit: "Major")
Card.create(name: "The Tower", keywords: "Upright: [text] Reversed: [text]", desc: "[desc text]", suit: "Major")
Card.create(name: "The Star", keywords: "Upright: [text] Reversed: [text]", desc: "[desc text]", suit: "Major")
Card.create(name: "The Moon", keywords: "Upright: [text] Reversed: [text]", desc: "[desc text]", suit: "Major")
Card.create(name: "The Sun", keywords: "Upright: [text] Reversed: [text]", desc: "[desc text]", suit: "Major")
Card.create(name: "Judgment", keywords: "Upright: [text] Reversed: [text]", desc: "[desc text]", suit: "Major")
Card.create(name: "The World", keywords: "Upright: [text] Reversed: [text]", desc: "[desc text]", suit: "Major")