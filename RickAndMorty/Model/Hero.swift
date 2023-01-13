//
//  Hero.swift
//  RickAndMorty
//
//  Created by Артём on 26.08.2022.
//

import Foundation

// сущность "Герой"
struct Hero {
    let title: String
    let imageName: String
    let status: String
    let species: String
    let gender: String
    let origin: String
}


extension Hero {
    static func getHeroesList() -> [Hero] {
        [
            Hero(title: "Rick Sanchez",  imageName: "rick", status: "Alive", species: "Human", gender: "Male", origin: "Earth"),
            Hero(title: "Morty Smith",  imageName: "morty", status: "Alive", species: "Human", gender: "Male", origin: "Earth"),
            Hero(title: "Summer Smith",  imageName: "summer", status: "Alive", species: "Human", gender: "Female", origin: "Earth"),
            Hero(title: "Beth Smith",  imageName: "beth", status: "Alive", species: "Human", gender: "Female", origin: "Earth"),
            Hero(title: "Jerry Smith",  imageName: "jerry", status: "Alive", species: "Human", gender: "Male", origin: "Earth"),
            Hero(title: "Pickle Rick",  imageName: "pickleRick", status: "Resurrected", species: "Cucumber", gender: "Male", origin: "Human"),
            Hero(title: "Birdperson‎",  imageName: "birdman", status: "Resurrected", species: "Bird", gender: "Male", origin: "Alien"),
            Hero(title: "The President",  imageName: "thePresident", status: "Alive", species: "Human", gender: "Male", origin: "Earth"),
            Hero(title: "Zeep Xanflorp",  imageName: "zeepXanflorp", status: "Alive", species: "Alien", gender: "Male", origin: "Alien"),
            Hero(title: "Mr. Meeseeks",  imageName: "mrMeeseeks", status: "Dead", species: "Meeseeks", gender: "Male", origin: "Alien"),
            Hero(title: "Jessica",  imageName: "jessica", status: "Alive", species: "Human", gender: "Female", origin: "Earth"),
            Hero(title: "Squanchy",  imageName: "squanchy", status: "Alive", species: "The man - cat", gender: "Male", origin: "Squanch"),
        ]
    }
}

