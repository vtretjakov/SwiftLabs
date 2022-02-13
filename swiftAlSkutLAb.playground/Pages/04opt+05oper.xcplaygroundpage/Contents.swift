import UIKit
var apples: Int? = 5
// apples = nil \ - ошибка, apples по умолчанию - Int и оно не может быть nil. Для этого - опциональные типы (добавляем к Int?). nil значит полное отсутствие с ним нельзя работать (+-..), но во многих случаях достаточно понимать что определенного параметра может вообще не быть. Поэтому если возможен nil требуется проверка!
if apples == nil  {
    print("nil apples")
} else {
    print(apples!) // без ! будет - Optional(5)
    // если apples существует
    // если мы хотим прибавить + 2 то будет ошибка так как 2 имеет тип Int, apples - Int? для того чтобы произвести действие нужно привести apples к Int знаком !
    let a = apples! + 2 // вынужденное преобразование
    print(a)
}

// Байдинг(связывание Optional)

if var number = apples {
    number = number + 2
    print(number)
} else {
    print("nil apples")
} // если apples не нил то true первое выражение, если nil то второе


// Int
// Int?
// Int! - не явно развернутый optional

var apples2 : Int! = nil // ! когда nil только в начале когда к нему никто не обратился
apples2 = 2
assert(apples2 != nil, "Oh no!!!") // проверка,если правильно, идем дальше если = 2, программа упадет(применяется в фреймворках)
apples2 = apples2 + 5

//MARK: - homeWork

// 1

// let string = "55"
// let temp = string.toInt()
// if temp != nil {
//    let b = temp!
// }

// 2

// 200 <= x < 300

var response : (statusCode: Int, message: String?, errorMessage: String?)

var student1 : (
    name: String?,
    carPlate: String?,
    grade: Int?
)
student1.name = nil
print("Name student1 is \(String(describing: student1.name)))")
student1.name = "Igor"
print("Name student1 is \(String(describing: student1.name)))")

var g : Int! = 10
if g != nil {
    print(g!)
}

//  Домашка базовые операторы (шахматы)

var point = (x: 8, y: 7)
(point.x + point.y) % 2 == 0 ? print("black") : print("white")

// если остаток от деления 0 то черные если нет то белые





