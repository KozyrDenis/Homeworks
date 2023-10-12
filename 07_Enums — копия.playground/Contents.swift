import UIKit

// MARK: - 🏠 Домашнее задание.
 
// TODO: - 🧑‍💻 Выполните каждый из пунктов для закрепления материала. Решение пишите на следующей строке после задания:
 // - создайте enumeration с разными направлениями музыки, а-ля pop, rock, classic и т.д.
 
enum musicGenre: String, CaseIterable {
    case POP = "Creed"
    case Rap = "2Pac"
    case Rock = "LinkinPark"
    case Classic = "Bethoween"
}
 // - объявите константу myFavoriteStyle и присвойте ей любое значение из enumeration
var myFavouriteStyle = musicGenre.Rap
 // - распечатайте каждое значение enumeration, используя итерацию
for i in musicGenre.allCases {
    print(i)
}
 // - добавьте в enumeration raw value типа String, которое будет являться именем исполнителя данного жанра

 // - проинициализируйте константу singerStyle, используя rawValue
let singerStyle = musicGenre(rawValue: "2Pac")

// - напишите switch statement, который будет сравнивать singerStyle с cases для каждого направления музыки и печатать название какой-нибудь песни соответствующего жанра
switch "2Pac" {
case("Rock"):
    print("In the End")
case("Rap"):
    print("Lose youself")
case("POP"):
    print("Цвет настроения черный")
case("Classic"):
    print("for Eliza")
default:
    print("Error")
}
 // - Представте, что мы работаем над приложением для заказа пиццы. Создайте enumeration содержащий три разных размера для пиццы small, medium, big. Это должен быть enum с associated values, которые будут использованы для указания дополнительных ингридиентов: для small - один, для medium - два, для big - три ингридиента.
enum pizza {
    case Big(Ingredients: [String])
    case small(Ingredients: String)
    case medium(Ingredients: [String])
}
pizza.medium(Ingredients: ["cucumber", "spicy"])
pizza.Big(Ingredients: ["cucumber", "spicy","meat"])
pizza.small(Ingredients: ("tomatoes"))
 // - Создайте три константы, которым присвойте три разных значения из enum с пиццой.
var mediumPizza = pizza.medium(Ingredients: ["cucumber", "spicy"])
var bigPizza = pizza.Big(Ingredients: ["cucumber", "spicy","meat"])
var smallPizza = pizza.small(Ingredients: ("tomatoes"))

 // - Напишите switch, который будет выводить в консоль сообщение о размере заказанной пиццы и дополнительных ингредиентах. Что-то типа "Your order is - The big pizza with mashrooms, sheese, bacon"
switch bigPizza {
case(pizza.medium(Ingredients: ["cucumber", "spicy"])):
    print("Your order is the medium pizza with \(mediumPizza)")
case(pizza.small(Ingredients: "tomatoes")):
    print("Your order is the small pizza with \(smallPizza)")
case(pizza.Big(Ingredients: ["cucumber", "spicy","meat"])):
    print("Your order is the big pizza with \(bigPizza)")
default:
    print("You don't have an order")
}
/*
 TODO: - ❓ Вопросы к изучению (писать ответы не нужно, но быть готовым ответить):
 - Что такое enumerations?
 - Для чего нужен протокол CaseIterable?
 - Что такое Recursive Enumerations?
 */
