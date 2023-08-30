import UIKit

/*
 MARK: - 🏠 Домашнее задание.
 
 TODO: - 🧑‍💻 Выполните каждый из пунктов для закрепления материала. Решение пишите на следующей строке после задания:
 // - проинициализируйте два пустых массива foodArray and drinkArray разными способами
 */
var foodArray: [String] = []
var drinkArray: [String] = []
//взял в кавычки так как выдавало ошибку

 // - присвойте первому массиву стринг значения - названия продуктов (минимум 5)
foodArray = ["burger", "sandwich", "frenchfries", "chocolate", "cheese", "sausage"]

 // - присвойте второму массиву названия напитков (минимум 5)
drinkArray = ["milk", "cola" , "coffee", "beer" , "water", "juice"]

 // - добавьте в конец foodArray еще одно значение
foodArray.append("butter")
 // - добавьте в середину drinkArray еще одно значение
let midleIndex = drinkArray.count / 2
drinkArray.insert("coconut milk", at: midleIndex)
 print(drinkArray)
 // - создайте третий массив shoppingList, который должен включать в себя все значения из foodArray and drinkArray
 var shoppingList = foodArray + drinkArray
 
 // - распечатайте в консоль название продуктов и напитков из shoppingList и общее количество продуктов в shoppingList.
print(shoppingList)
print(shoppingList.count)
 // - удалите первое и последнее значение, значение по индексу 2 из shoppingList
print(shoppingList.count)
shoppingList.remove(at:0)
shoppingList.remove(at:12)
shoppingList.remove(at: 2)
print(shoppingList)
 // - объявите словарь priceList, в котором ключами будут названия продуктов, а значениями цены для этих продуктов (цены с дробной частью)
var priceList: [String : Float] = ["burger": 24.3, "sandwich" : 12.4, "frenchfries" : 7.5, "chocolate" : 2.5, "cheese" : 1.5, "sausage" : 0.5, "butter" : 1.75]

 // - добавьте и удалите несколько значений из словаря.
priceList["sandwich"] = nil
print(priceList)

priceList["snickers"] = 7.8
print(priceList)
 // - распечатайте в консоль название и стоимость всех продуктов из словаря

print(priceList)
 // - объявите два сета со значениями одного типа.
let firstSet: Set<Int> = [22, 23, 24, 25]
let secondSet: Set<Int> = [22, 32, 42, 52]

 // - примените к вышеобъявленным сетами операции symmetricDifference, union, intersection, substracting, isSubset(of:), isSuperset(of:)
firstSet.symmetricDifference(secondSet)
firstSet.union(secondSet)
firstSet.intersection(secondSet)
firstSet.subtracting(secondSet)
firstSet.isSubset(of:secondSet)
firstSet.isSuperset(of:secondSet)


// MARK: - 🏠 Готовим ужин.
/*
 Вам нужно приготовить ужин из 3 блюд - салат, главное блюдо и дессерт. Для каждого блюда требуется определенный набор ингридиетов. Некоторые из этих ингредиентов уже есть в вашем холодильнике. Определите, какие ингридиенты вам необходимо докупить.
 
Внимание! Здесь мы работаем только с названиями ингридиетов, без учета их количества. Т.е. если вам нужны яйца в двух блюдах, в списке для покупок укажите их только один раз.
 
Используйте коллекции для обозначения списка ингридиетов. Для каждого блюда будет свой список ингридиентов, вводим значения. Так же отдельные списки для ингридиетов которые у вас есть (вводим значение) и для ингридиетов, которые нужно купить (вычисляем на основе того, что нужно и того, что есть).
 
 Подумайте, какой тип коллекций лучше всего подходит для решения задачи.

*/
var refreeArray: Set = ["milk", "potatoes","carrot", "meat", "oil", "syrop"]

var dessert: Set = ["milk", "berries", "chocolate", "cream"]
var salad: Set = ["cucumbers", "tomatoes", "oil", "salt", " dill"]
var main: Set = ["oil", "potatoes", "carrot", "sour cream", "meat", "dill"]
dessert.subtracting(refreeArray)
salad.subtracting(refreeArray)
main.subtracting(refreeArray)

/*
 TODO: - ❓ Вопросы к изучению (писать ответы не нужно, но быть готовым ответить):
 - Чем отличаются друг от друга array, set and dictionary?
 - Какие операции можно с ними выполнять?
 */
let string = "home"
string.hashValue
