//
//  ColorWheel.swift
//  FunFacts
//
//  Created by Mike Liao on 7/1/16.
//  Copyright © 2016 Mike Liao. All rights reserved.
//

import Foundation
import UIKit

struct ColorWheel {
    let colorsArray = [
        UIColor(red: 90/255.0, green: 187/255.0, blue: 181/255.0, alpha: 1.0),
        UIColor(red: 222/255.0, green: 171/255.0, blue: 66/255.0, alpha: 1.0),
        UIColor(red: 32/255.0, green: 35/255.0, blue: 53/255.0, alpha: 1.0),
        UIColor(red: 90/255.0, green: 187/255.0, blue: 152/255.0, alpha: 1.0),
        UIColor(red: 30/255.0, green: 110/255.0, blue: 142/255.0, alpha: 1.0),
        UIColor(red: 245/255.0, green: 120/255.0, blue: 10/255.0, alpha: 1.0),
        UIColor(red: 242/255.0, green: 150/255.0, blue: 42/255.0, alpha: 1.0),]
    
    func randomColor() -> UIColor {
        var unsignedArrayCount = UInt32(colorsArray.count)
        var unsignedRandomNumber = arc4random_uniform(unsignedArrayCount)
        var randomNumber = Int(unsignedRandomNumber)
        return colorsArray[randomNumber]
        
    }
}