//
//  FactBook.swift
//  FunFacts
//
//  Created by Mike Liao on 7/1/16.
//  Copyright © 2016 Mike Liao. All rights reserved.
//

import Foundation

struct FactBook {
    let factsArray = [
        "Ants stretch when they wake up in the morning.",
        "Ostritches can ..............",
        "3333333333333333333333333333",
        "444444444444444444444444444444444444",
        "555555555555555555555555555555555",
        ]

    func randomFact() -> String {
        var unsignedArrayCount = UInt32(factsArray.count)
        var unsignedRandomNumber = arc4random_uniform(unsignedArrayCount)
        var randomNumber = Int(unsignedRandomNumber)
        return factsArray[randomNumber]
    }
    
}