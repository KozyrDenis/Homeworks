import UIKit

// MARK: - 🏠 Домашнее задание.
 
// TODO: - 🧑‍💻
/*
 Давайте представим, что у вас компания, сдающая недвижимость в аренду.
 
 Создайте структуру House.
 Добавьте свойства: адрес, площадь, количество комнат, количество туалетных комнат, наличие бассейна, стоимость аренды в месяц.
 Создайте экземпляр структуры.
 Объявите еще одну константу и присвойте ей уже созданный экземпляр структуры.
 Измените во втором экземпляре стоимость аренды. Обратите внимание на ошибку, которую выдаст Xcode. Исправьте ее.
 Распечатайте стоимость аренды для обоих экземпляров.
 Изменилось ли значение для первого экзепляра?
 */
struct House{
    let address = "Khabarovsk"
    let area = 34.5
    let toilets = 1
    let swimmingPool = false
    var price = 30000
    var numbersOfRoom = 2
}
var house1: House = House()
print(house1)
house1.price = 13000
print(house1)
print(House())
/*
 Создайте класс Apartment.
 Добавьте такие же свойства (представим, что у нас встречаются варианты с бассейном 😁)
 Создайте экземпляр класса.
 Объявите еще одну константу и присвойте ей уже созданный экземпляр класса.
 Измените во втором экземпляре стоимость аренды. Обратите внимание на отсутсвие ошибки!
 Распечатайте стоимость аренды для обоих экземпляров.
 Изменилось ли значение для первого экзепляра?
 
 Найдите разницу между использованием классов и структур.
 
 Выведите в консоль информацию, ссылаются ли 2 переменные класса на один и тот же объект или на разные.
 */
class Apartment {
    let address = "Khabarovsk"
    let area = 34.5
    let toilets = 1
    let swimmingPool = false
    var price = 30000
}
var apartment1 = Apartment()
apartment1.price = 5000
print(apartment1.price)
print(Apartment().price)
/*
 TODO: - ❓ Вопросы к изучению (писать ответы не нужно, но быть готовым ответить):
 - Для чего нужны классы и структуры?
 - Что общего между классами и структурами?
 - Чем отличаются классы от структур?
 - Что такое value и reference types?
 */

