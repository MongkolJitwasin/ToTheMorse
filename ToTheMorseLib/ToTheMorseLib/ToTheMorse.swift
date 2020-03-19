//
//  MorseConverter.swift
//  ToTheMorseLib
//
//  Created by Mongkol Jitwasin on 14/3/2563 BE.
//  Copyright © 2563 Mongkol Jitwasin. All rights reserved.
//

import Foundation

public class ToTheMorse {
    
    private init() {}
    
    public static func convertTextToMorseCode(text: String, newLineEveryWord: Bool) -> String {
        var morseAsString = String()
        let morse = MorseLanguage()
        
        let text = text.lowercased()
        
        for eachChar in text {
            
            if let letter = morse.morseCode[eachChar] {
                
                if(letter == "/" && newLineEveryWord) {
                    morseAsString.append("\r\n")
                } else {
                    morseAsString.append(letter + " ")
                }
            }
            
        }
        
        return morseAsString
    }
        
    
    public static func convertMorseCodeToText(morseCode: String) -> String {
        
        var product = String()
        var charAsMorseCode = String()
        var morseCode = morseCode
        
        if(morseCode.first == " ") {
            morseCode.remove(at: morseCode.startIndex)
        }
        
        for eachSymbol in morseCode {
            let symbolIsMorseLanguage = (eachSymbol == "." || eachSymbol == "-" || eachSymbol == "/" || eachSymbol == "\r\n" || eachSymbol == " ")
            
            if(symbolIsMorseLanguage) {
                
                if (eachSymbol == " ") {
                    
                    product.append(getLetter(byCharAsMorseCode: charAsMorseCode))
                    charAsMorseCode = String()
                    
                } else if(eachSymbol == "\r\n") {
                    
                    product.append(" ")
                    
                } else {
                    
                    charAsMorseCode.append(eachSymbol)
                    
                }
            }
        }
        
        return product
    }
    
    private static func getLetter(byCharAsMorseCode morseCode: String) -> Character {
        let morseLanguage = MorseLanguage()
        let product = (morseLanguage.morseCode as NSDictionary).allKeys(for: morseCode) as! [Character]
        
        return product[0]
    }
}
