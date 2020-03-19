//
//  MorseConverter.swift
//  ToTheMorseLib
//
//  Created by Mongkol Jitwasin on 14/3/2563 BE.
//  Copyright © 2563 Mongkol Jitwasin. All rights reserved.
//

import Foundation

internal class MorseConverter {
    
    private init() {}
    
    func convertTextToMorseAsString(text: String, newLineEverWord: Bool) -> String {
        var product = String()
        let morse = MorseLanguage()
        
        for eachChar in text {
            let eachChar = eachChar.lowercased()
            if (eachChar == " " && eachChar != text.first?.lowercased() && newLineEverWord) {
                product.append("\r\n")
            } else {
                product.append(morse.morseCode[Character(eachChar)]!)
                product.append("_")
            }
        }
        
        return product
    }
        
    
    func convertMorseAsStringToText(morseCode: String) -> String {
        
        var product = String()
        var charAsMorseCode = String()
        var separatorCount: Int = 0
        
        for eachSymbol in morseCode {
            if(eachSymbol != "_") {
                
                if(separatorCount == 1) {
                    separatorCount = 0
                    product.append(getChar(byCharAsMorseCode: charAsMorseCode))
                    charAsMorseCode = String()
                }
                
                charAsMorseCode.append(eachSymbol)
            } else {
                separatorCount = separatorCount + 1
                
                if(separatorCount == 3) {
                    product.append(" ")
                }
            }
        }
        
        return product
    }
    
    private func getChar(byCharAsMorseCode morseCode: String) -> Character {
        let morseLanguage = MorseLanguage()
        let product = (morseLanguage.morseCode as NSDictionary).allKeys(for: morseCode) as! [Character]
        return product[0]
    }
}
