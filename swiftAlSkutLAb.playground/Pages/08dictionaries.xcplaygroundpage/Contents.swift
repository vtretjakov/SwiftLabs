// включает в себя ключ и значение(ключ один, значения могут быть разными)  порядок рандомный
//let dict : [String : String] = ["машина" : "car", "мужик" : "man"]
//let dict2 : [Int : String] = [0 : "car", 1 : "man"]
//let dict3 : Dictionary<String, Double> = ["a" : 2.0]

import Foundation

var dict = ["машина" : "car", "мужик" : "man"]

dict["мужик"]
dict.count
dict.isEmpty

var dict3 = [String : String]()

dict3.count
dict3.isEmpty

dict["комп"] = "computer"


dict.keys
dict.values

//dict["комп"] = "mac"

dict.updateValue("mac", forKey: "комп") // возращает "computer"

let comp = dict["комп"] // "mac"

// let comp : String? = dict["комп"]

if let comp = dict["комп2"] {
    print("\(comp)")
} else {
    print("no value for key комп2")
}

/*
dict["мужик"] = nil // delete
// or dict.removeValue(forKey: "мужик")

dict = [:] // обнуление всего dict

dict.isEmpty // true

dict["hello"] = "world"

dict
*/

for key in dict.keys { // для каждого ключа в дикт
print("key = \(key), value = \(dict[key]!)") //  можно value = \(value)
} // key = машина, value = ("car")
  // key = комп, value = ("mac")

// homeWork

var students = [
    "Alex Skutarenko" : 75,
    "Vlad Tretyak" : 70,
    "Dmitriy Roza" : 69,
    "Alexey Rost" : 55,
    "Anna Maria" : 57 ]

print(students)
students.keys.count

// улучшили оценки

students["Vlad Tretyak"] = 73
students["Anna Maria"] = 80
print(students)

// новые

students["Boris Grebenshikov"] = 33
students["Olga Potapova"] = 49
print(students)

// ушли

students.removeValue(forKey: "Boris Grebenshikov")
print(students)

var i = 0

// Общий балл

var totalScore = 0 // сумма всех оценок
var averageScore : Double = 0 // средний балл

for key in students.keys {
    totalScore += students[key]!
    averageScore += (Double(students[key]!) / Double(students.count))
}
totalScore
averageScore

// 2

let months = [
    "Январь" : 31,
    "Февраль" : 28,
    "Март" : 31,
    "Апрель" : 30,
    "Май" : 31,
    "Июнь" : 30,
    "Июль" : 31,
    "Август" : 30,
    "Сентябрь" : 30,
    "Октябрь" : 31,
    "Ноябрь" : 30,
    "Декабрь": 31
]

print(months)

for (month, days) in months {
    print("\(month) \(days) days")
}

// 3

var chessboard = [String : Bool]()

let horizontal = ["A", "B", "C", "D", "E", "F", "G", "H"]

for i in 0..<horizontal.count {
    for j in 1...8 {
        if i%2 == j%2 {
            chessboard["\(horizontal[i])\(j)"] = true
        } else { chessboard["\(horizontal[i])\(j)"] = false
    }
  }
}

for (key, value) in chessboard {
    print("\(key) \(value)")
}
