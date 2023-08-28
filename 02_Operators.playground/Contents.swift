import UIKit

/*
 MARK: - 🏠 Домашнее задание.
 
 TODO: - ❓ Вопросы для самопроверки:
 - Какие бывают операторы? -
 - Для чего служит тернарный оператор?
 - Какие операторы существуют для объявления range?
 - Какие пять способов разворачивания опционалов вы знаете?
 
 
 
 TODO: - 1. Нечетные числа
 - создать кортеж с произвольными числами, не менее трех значений в кортеже
 - распечатать в консоль только четные числа. Подумайте, чем четные числа отличаются от нечетных и какой оператор может помочь нам выявить различие.
 - решение должно работать для любых чисел, т.е. если вы несколько раз измените ваши числа в кортеже, то каждый раз задача должна выполняться.
 
 TODO: - 2. Нечетные числа
 - создать период произвольного значения
 - распечатать в консоль только четные числа с отрицательным значением
 
 TODO: - 3. Игра в Кости*
 Два игрока. Они по очереди бросают два кубика, на гранях которых числа от 1 до 6. Выпавшее число защитывается игроку, который бросал кости. У каждого из игроков 7 попыток. Используйте random для получения случайного числа в заданном периоде (почитайте про random https://developer.apple.com/documentation/swift/int/random(in:)-9mjpw)
 При каждом броске костей распечатайте в консоль имя игрока, сколько очков он получает в текущей попытке, сколько очком всего он накопил. По истечении 7 бросков для каждого из игроков, определите победителя и распечатайте эту информацию в консоль.
 Используйте знания, полученные и в предыдущих уроках. Найдите самое короткое решение!

 TODO: - 🏆 Ваше решение ⬇️:

/*
1) операторы бывают
- бинарные
- унарные
-тернарные
*/
 
/* тернарный оператор служит для использования с тремя значениями, и обозначается,  как ? и :  */

/* для объеялвния range используются
 
 1) ...  ()это операторв диапазона
 2) ..< (halfOpenRange)это оператор от заданного числа до другого числа, не включая его
 3) ...5 (openSidedRange)- включает все значения от минимального возможного значения Int до 5,влючая 5.    */

/* способы разварачивая опционала
 1) force unwrapping - его используют, когда точно знают что есть значение
 2)nil - проверка с поомщью if else statement
 3) binding  - если оцпионал содержит значение, то мы временно присваиваем его значение константе или переменной и используем его
 4)  с помощью nil coalescing  - обозначется ?? - позволяет нам присвоить значение по умолчанию,  а если значение в опционале var / let не будет, то значение будет равно nil
 */


нечетные числа #1

let numbers: (Int, Int, Int, Int, Int) = ( -4, 26, 7, 48, 5)
//solution 1
if numbers.0 < 0, numbers.0 % 2 == 0 {
    print("\(numbers.0) even")
}

if numbers.0 % 2 == 0 {
    print("\(numbers.0) even")
}
if numbers.1 % 2 == 0 {
    print("\(numbers.1) even")
}
if numbers.2 % 2 == 0 {
    print("\(numbers.2) even")
}
if numbers.3 % 2 == 0 {
    print("\(numbers.3) even")
}
if numbers.4 % 2 == 0 {
    print("\(numbers.4) even")
}
// solution 2

let numbersArray: [Int] = [numbers.0 ,numbers.1 ,numbers.2, numbers.3, numbers.4]
for number in numbersArray {
    if number % 2 == 0, number < 0 {
        print("\(number) even")
    }


нечетные числа #2
*/

var radius: ( Int, Int, Int, Int ) = (2, -4, -7, -8)

if radius.0 < 0, radius.0 % 2 == 0 {
    print("\(radius.0) true")
}
if radius.1 < 0, radius.1 % 2 == 0 {
    print("\(radius.1) true")
}
if radius.2 < 0, radius.2 % 2 == 0 {
    print("\(radius.2)  true")
}
if radius.3 < 0, radius.3 % 2 == 0 {
    print("\(radius.3) true")
}
    
/*
if numbers.0 < 0, numbers.0 % 2 == 0 {
    print("\(numbers.0) even")
}
 */
/*
task 3-  Игра в кости
 */
/*
let number: Int = 0
var name: String = "box"

let colors: (String, Int, String) = ("blue", 0, "grey")
*/


/*
TODO: - 3. Игра в Кости*
Два игрока. Они по очереди бросают два кубика, на гранях которых числа от 1 до 6. Выпавшее число защитывается игроку, который бросал кости. У каждого из игроков 7 попыток. Используйте random для получения случайного числа в заданном периоде (почитайте про random https://developer.apple.com/documentation/swift/int/random(in:)-9mjpw)
При каждом броске костей распечатайте в консоль имя игрока, сколько очков он получает в текущей попытке, сколько очком всего он накопил. По истечении 7 бросков для каждого из игроков, определите победителя и распечатайте эту информацию в консоль.
Используйте знания, полученные и в предыдущих уроках. Найдите самое короткое решение!
*/

let player1: String = "player one"
var player1Count: Int = 0

let player2: String = "player two"
var player2Count: Int = 0
print(player1Count)
for _ in 1...7 {
    let player1Result: Int = Int.random(in: 1...6)
    var newResult = player1Count + player1Result
    player1Count = newResult
    print(player1Count)
}
print(player1Count)

let player2Result: Int = Int.random(in: 1...6)
let newResult2 = player2Count + player2Result
player2Count = newResult2
for _ in 1...7 {
    let player2Result: Int = Int.random(in: 1...6)
    let newResult2 = player2Count + player2Result
    player2Count = newResult2
    print(player2Count)
}
print(player2Count)

if player1Count < player2Count {
    print(true)
} else {
    print(false)
}
