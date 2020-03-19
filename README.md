# ToTheMorse
Simple and small library for convert between your text and Morse code.
Writen in Swift.

# Usage
```Swift
import ToTheMorseLib
```
<br/>


```Swift
let morseCode = MorseConverter.convertTextToMorseCode(text: "Just for test", newLineEveryWord: false)
//morseCode = .--- ..- ... - / ..-. --- .-. / - . ... - 
```  
If newLineEveryWord is = false word separator will be '/'. <br/><br/>



```Swift
let morseCode = MorseConverter.convertTextToMorseCode(text: "Just for test", newLineEveryWord: true)
///morseCode = .--- ..- ... - 
              ..-. --- .-. 
              - . ... - 
///
```  
Word separator = '\r\n' <br/><br/>


```Swift 
let text = MorseConverter.convertMorseCodeToText(morseCode: morseCode)
//text = just for test
```  
The result of convertMorseToText() will always be lower cases. <br/><br/>
