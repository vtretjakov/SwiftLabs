import Foundation

var str = String() // or ""

str = str + "a"
str += "b"

// Value Type

var a = 5
var b = a

a += 1 // +1 a = 6
b // b = 5

var str1 = "a"
var str2 = str1

str1
str2

// str1 = ""

str1
str2 // a

str1.isEmpty // если строка пустая true else false

let char1: Character = "x" // для character 1 символ

for c in "Hello world!" {
    print(c)
}

// str1 += char1 = error, для добавления исп append

str1.append(char1) // ax

// если хотим поработать с str1 как с ObjcC то (пример использования длины):

(str1 as NSString).length
NSString(string: str1).length

 let heart = "\u{1F496}"

let eAcute: Character = "\u{E9}" // e c ударением
let combinedEAcute: Character = "e\u{301}" // замена символа е на е с ударением

let fun: Character = "ъ\u{301}\u{20dd}" // ъ меняем на ъ с ударением и в кружочке

let funString = "what is this? -> \(fun)"

funString.underestimatedCount // кол-во символов

if funString == "aa" {
    print("yes")
} else {
    print("not equal")
}

funString.hasPrefix("what") // есть ли префикс what(с чего строка начинается, суффикс чем заканчивается)
funString.hasSuffix("ъ\u{301}\u{20dd}") // если поменять местами 301 и 20дд все равно будет true

/// homeWork
// 1

let one: String? = "12"
let two: String? = "1era"
let three: String? = "18"
let four: String? = "zeus"
let five: String? = "aid"


let sum = "\(Int(one!)) + \(Int(two!)) + \(Int(three!)) + \(Int(four!)) + \(Int(five!))"

let oneS = Int(one!)
let twoS = Int(two!)
let threeS = Int(three!)
let fourS = Int(four!)
let fiveS = Int(five!)

let sum2 = "\(oneS ?? nil) + \(twoS ?? nil) + \(threeS ?? nil) + \(fourS ?? nil) + \(fiveS ?? nil)"

print(sum)
print(sum2)

// 2

let alpha = "abcdefghijklmnopqrstuvwxyz"
var search : Character = "e"
var index = 0

for aw in alpha {
    if search == aw {
        print("index = \(index)")
    }
    index += 1
}

// 3

(sum as NSString).length










