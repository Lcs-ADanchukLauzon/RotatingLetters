//
//  main.swift
//  RotatingLetters
//
//  Created by Gordon, Russell on 2018-04-06.
//  Copyright © 2018 Gordon, Russell. All rights reserved.
//

import Foundation

var validInput = ""
while 1 == 1 {
  
    // Makes sure that the input is a String and not an Int or nil
    guard let input : String = readLine() else{
        continue
    }
   
    // Checks to see if the input is in upper case
    let upperInput = input.uppercased()
    if input != upperInput {
        continue
    }
    
    // Check for spaces
    if input.contains(" ") {
       continue
    }
    
    // Checks to see if the length of the input is acceptable
    if input.count > 30 || input.count < 1 {
        continue
    }
    
    var yes = 0
    for characters in input {
        
        switch characters {
        case "1", "2", "3", "4", "5", "6", "7", "8", "9", "0" :
            yes += 1
        default:
            break
        }
    }
    if yes > 0 {
        continue
    }
    
    // if code this code is run then input is valid for processing
    validInput = input
    break // ends loop
}




// creating a variable to compare the number of acceptable letters to the length of the input to determine is they match.
var goodCharacterNumber = 0

for individualCharacters in validInput {
    
    
    switch individualCharacters {
    case "I", "O", "S", "H", "Z", "X", "N" :
        goodCharacterNumber += 1
    default:
        break
    }
    
}

// If they match than they are good if not program ends
if validInput.count == goodCharacterNumber {
    print("YES")
} else {
    print("NO")
}























