//
//  MorseLanguage.swift
//  ToTheMorseLib
//
//  Created by Mongkol Jitwasin on 18/3/2563 BE.
//  Copyright © 2563 Mongkol Jitwasin. All rights reserved.
//

import Foundation

class MorseLanguage {
    
    private(set) lazy var morseCode: [Character: String] = {
        
        var product: [Character: String] = ["0": "-----",
                                            "1": ".----",
                                            "2": "..---",
                                            "3": "...--",
                                            "4": "....-",
                                            "5": ".....",
                                            "6": "-....",
                                            "7": "--...",
                                            "8": "---..",
                                            "9": "----.",
                                            "a": ".-",
                                            "b": "-...",
                                            "c": "-.-.",
                                            "d": "-..",
                                            "e": ".",
                                            "f": "..-.",
                                            "g": "--.",
                                            "h": "....",
                                            "i": "..",
                                            "j": ".---",
                                            "k": "-.-",
                                            "l": ".-..",
                                            "m": "--",
                                            "n": "-.",
                                            "o": "---",
                                            "p": ".--.",
                                            "q": "--.-",
                                            "r": ".-.",
                                            "s": "...",
                                            "t": "-",
                                            "u": "..-",
                                            "v": "...-",
                                            "w": ".--",
                                            "x": "-..-",
                                            "y": "-.--",
                                            "z": "--..",
                                            ".": ".-.-.-",
                                            ",": "--..--",
                                            "?": "..--..",
                                            "!": "-.-.--",
                                            "-": "-....-",
                                            "/": "-..-.",
                                            "@": ".--.-.",
                                            "(": "-.--.",
                                            ")": "-.--.-",
                                            " ": "___"]
        
        return product
    }()
    
    
    
}
