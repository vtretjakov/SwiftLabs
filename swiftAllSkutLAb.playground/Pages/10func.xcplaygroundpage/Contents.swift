var wallet = [100, 5, 1, 5, 5, 20, 50, 100, 1, 1]
type(of: wallet)
func calculateMoney() {
    var sum = 0
    for value in wallet  {
        sum += value
    }
    print("sum = \(sum)")
} // func ... (параметры фун-и) / -> *ничего не возращает */

calculateMoney()

/*
 .... операции с кошельком

sum = 0
for value in wallet  {
    sum += value
}
sum
*/

// - далее если произошла операция с кошельком то обновляем sum и заново пишем тоже самое
 
// - повтора быть не должно, для этого создадим функцию

// homeWork

