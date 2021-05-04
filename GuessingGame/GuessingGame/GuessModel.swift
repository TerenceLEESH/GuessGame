//
//  GuessModel.swift
//  GuessingGame
//
//  Created by Terence Lee on 4/5/2021.
//

import Foundation

class GuessModel
{
    
    
    
    var emojis = ["🐨","🐷","🐼"]
    var indexOfA = 0
    lazy var indexOfB = Int.random(in: 0..<emojis.count)
    
    func sendaNewEmoji()-> String{
        indexOfA = (indexOfA + 1)%emojis.count
        return emojis[indexOfA]
    }
    
    func compare() -> (message:String, emoji:String){
        if indexOfA == indexOfB{
            let old_emoji = emojis[indexOfB]
            indexOfB = Int.random(in: 0..<emojis.count)
            return("Same, you win, Guess a new emoji", old_emoji)
        }else{
            return("Different, try again","?")
        }
    }
}
