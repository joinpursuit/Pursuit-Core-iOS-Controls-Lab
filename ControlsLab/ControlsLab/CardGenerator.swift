//
//  CardGenerator.swift
//  ControlsLab
//
//  Created by Cameron Rivera on 11/8/19.
//  Copyright © 2019 Benjamin Stone. All rights reserved.
//

import UIKit

class CardGenerator{
    //MARK: Properties of CardGenerator
    
    //MARK: Methods of CardGenerator
    func printProperPicture(_ sender: UIStepper, _ suit: Suit) -> String{
        switch sender.value{
        case 1:
            return "A" + suit.rawValue
        case 2...10:
            return String(format: "%0.f", sender.value) + suit.rawValue
        case 11:
            return "J" + suit.rawValue
        case 12:
            return "Q" + suit.rawValue
        case 13:
            return "K" + suit.rawValue
        default:
            return ""
        }
    }
    
    func getSuit(_ sender: UISegmentedControl) -> Suit{
        switch sender.tag{
        case 5:
            if sender.selectedSegmentIndex == 0{
                return .heart
            } else if sender.selectedSegmentIndex == 1{
                return .spade
            }
        case 6:
            if sender.selectedSegmentIndex == 0{
                return .club
            } else if sender.selectedSegmentIndex == 1{
                return .diamond
            }
        default:
            break
        }
        return .heart
    }
    
    func stepperSetUp(_ sender: UIStepper){
        sender.maximumValue = 13
        sender.minimumValue = 1
        sender.stepValue = 1
        sender.value = 1
    }
}
