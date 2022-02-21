import Foundation
let constantArray = ["a", "b", "c", "d"] // один массив один тип
constantArray.count
var array = [String]() // пустой массив строк
if array.count == 0 {
    print("array is empty")
}
array += constantArray
array += ["e"]
array.append("f")
var array2 = array
array2[0] = "1"
array
array2 // != array, в objC равенство бы было т.к массивы ReferenceTypes здесь valueTypes
// ReferenceType - ссылка на объект, объект в памяти, изменив один объект меняется другой
array[1...4] = ["0"] // вырезали 4 элемента и заменили на 0, ..<4 исключать будет 4
array.insert("-", at: 2) // вставить элемент - 2 по счету(начинаем с 0)
array.remove(at: 2) // удаляем элемент под индексом 2
let money = [100, 1, 5, 20, 1, 50, 1, 1, 20]
let test = [Int](repeating: 100, count: 10) // 10 значений по 100 каждая
var sum = 0
var i = 0; i < money.count; i += 1; do {
    print("i=\(i)")
    sum += money[i]
}
for i in 0..<money.count {
    print("i=\(i)")
    sum += money[i]
}
sum
sum = 0
var index = 0
for i in money {
    sum += i
    index += 1
}
sum
sum = 0
// for (index, value) in enumirate(money) {
// print("index = \(index) value = \(value)")
// sum += value }

// homeWork


let days = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

print(days)

let months = ["Январь", "Февраль", "Март", "Апрель", "Май", "Июнь", "Июль", "Август", "Сентябрь", "Октябрь", "Ноябрь", "Декабрь"]

for j in 0..<days.count {
    print("\(days[j]) days - \(months[j])")
} //  для каждого j в диапозоне от 0 до 12

var arrayMon = [(String, Int)]()
for i in 0..<months.count {
    let month = (month:months[i], day: days[i])
    arrayMon.append(month)
}
print(arrayMon) // tuple

let dob = (month: 8, day: 7)
var daay = 0

for i in 0..<(dob.month - 1) {
    daay += days[i]
}
daay += dob.day
print("Количество дней в году до 7 августа в 2022 году составляет - \(daay) дней")

// 2 array of optionals

let opts : [Int?] = [1, nil, 5, 12, 18, nil]

var summ = 0
for value in opts {
    if let value = value {
        summ += value
    }
}
print(summ)

// 3 array of strings

let abc = "abcdefghijklmnopqrstuvwxyz"
var arr = [String]()

for value in abc {
    // arr.append(String(value))
    arr.insert(String(value), at: 0)
}
print(arr) // по порядку буквы, для обратного порядка - вместо append - insert


