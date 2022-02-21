// var age = 29
// objC
/*
if age == 21 {
    
} else if age == 28 {
    
} else {
    
}

switch age {
case 29:
    break
    default:
    break
}
*/

/* break
 
mainLoop: for _ in 0...1000 {
    
for i in 0..<20 {
    
    if (i < 15) {
        continue // следующее условие игнорируется пока < 15
    }
    if i == 10 {
        break mainLoop // 10 times
    }; print(i)
}
}
// break (дойдя до 10 курсор меняет направление (выбрасывает))

*/

// требует определения всех возможных значений

var age = 51
var name = "Vladimir"

switch age {
    case 0...16: print("schoolHuman")
    case 17...23: print("universHuman")
    case 23...50: break
    case 51, 56, 58: print("Сработало!")
    case 52: print("Скоро сработает!")
    default: break
} // break in switch выбивает из switch
// дефолт - что если не один из кейсов не сбудется?
//  fallthrough - перепрыгивание на следующее условие (игнорируя ее условие)

switch name {
    case "Vladimir" where age < 50:
        print("Hi, dear!")
    case "Vladimir" where age >= 50:
        print("Hi, Mr.Dear Vladimir")
    default: break
}

// with tuples

let tuple = (name, age)

switch tuple {
    case ("Vladimir", 48): print("Hi, Vladimir 48")
    case ("Vladimir", 49): print("Hi, Vladimir 49")
    
    // value biiding
    case (_, let number) where number >= 65 && number <= 70: print("Hi, dear old Vladimir")
    
    case ("Vladimir", _): print("Hi, Vladimir")
    default: break
} // если выполнится один кейс до другого не дойдет

    var optional : Int? = 5

// optional Biding
if let optional = optional {
    print("\(optional) != nil")
}

let point = (5,-5)

switch point {
    case let (x,y) where x == y:
        print("x == y")
    case let (x,y) where x == -y:
        print("x == -y")
    case let (_,y) where y < 0:
        print("y < 0")
    default: break
}

/*
let array : [Printable] = [5, 5.4, 5.4]


switch array[0] {
    case _ as Int: print("Int") // as = то
    case _ as Float: print("Float")
    case _ as Double: print("Double")
    
    default: break
}
*/

// homeWork

let text = "111 Текст (от лат. textus — ткань; сплетение, сочетание) — зафиксированная на каком-либо материальном носителе человеческая мысль; в общем плане связная и полная последовательность символов. 111"
print(text)

var symbols = (glas: 0, soglas: 0, symb: 0, numbers: 0)

for cha in text {
    switch String(cha) {
    case "а", "о", "э", "е", "и", "ы", "у", "ё", "ю", "я": symbols.glas += 1
    case "б", "в", "г", "д", "ж", "з", "й", "к", "л", "м", "н", "п", "р", "с", "т", "ф", "х", "ч", "ц", "ш", "щ": symbols.soglas += 1
    case "0", "1", "2", "3", "4", "5", "6", "7", "8", "9": symbols.numbers += 1
    default: symbols.symb += 1
    }
}

print("гласных в тексте(не считая заглавных букв): \(symbols.glas), согласных(не считая заглавных букв): \(symbols.soglas), симболов(все кроме букв и цифр, включая пробелы): \(symbols.symb), цифр: \(symbols.numbers) шт. ")

// 2

var age2 = 101

switch age2 {
    case 0..<6: print("Дите")
    case 6..<16: print("Человек-Школа")
    case 16..<23: print("Человек-Зачет")
    case 23..<28: print("Человек-Завод")
    case 28...age2: print("man-mr-oldMan-developer-engeneer")
    default: break
    }

// 3

var firstName = "Vladimir"
var secondName = "Tretyakov"
var patronimic = "Olegovich"

switch (firstName, secondName, patronimic) {
case let (f, _, _) where f.hasPrefix("O") == true: print("Hi, \(firstName)")
case let (_, _, p) where p.hasPrefix("D") == true: print("Hi, \(firstName) \(patronimic)")
case let (_, s, _) where s.hasPrefix("E") == true: print("Hi, \(secondName)")
default: print("Hello, \(secondName) \(firstName) \(patronimic)")
}

// 4

var seaWar = (x:3, y:4)

switch seaWar {
case (3, 3...5): print("Попал")
default: print("Мимо")
}


