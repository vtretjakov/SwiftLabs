// включает в себя ключ и значение(ключ один, значения могут быть разными)  порядок рандомный
//let dict : [String : String] = ["машина" : "car", "мужик" : "man"]
//let dict2 : [Int : String] = [0 : "car", 1 : "man"]
//let dict3 : Dictionary<String, Double> = ["a" : 2.0]

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



