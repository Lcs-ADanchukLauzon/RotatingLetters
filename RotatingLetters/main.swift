//
//  main.swift
//  RotatingLetters
//
//  Created by Gordon, Russell on 2018-04-06.
//  Copyright © 2018 Gordon, Russell. All rights reserved.
//

import Foundation

// Get the user input
var rawInput = readLine()

// Makes sure that the input is a String and not an Int or nil
guard let input : String = rawInput else{
   print("NO")
    exit(9)
}


// Checks to see if the input is in upper case
var upperInput = input.uppercased()
if input != upperInput {
    print("NO")
    exit(9)
}


// Checks to see if the length of the input is acceptable
if input.characters.count > 30 || input.characters.count < 1 {
    print("NO")
    exit(9)
}

// creating a variable to compare the number of acceptable letters to the length of the input to determine is they match.
var goodCharacterNumber = 0

for individualCharacters in input {
    
    
    switch individualCharacters {
    case "I", "O", "S", "H", "Z", "X", "N" :
        goodCharacterNumber += 1
    case " " :
        break
    
    default: break
    }
    
}

// If they match than they are good if not program ends
if input.characters.count == goodCharacterNumber {
    print("YES")
} else {
    print("NO")
}























