import UIKit

// MARK: - 🏠 Домашнее задание.
 
// TODO: - 🧑‍💻 Выполните каждый из пунктов для закрепления материала. Решение пишите на следующей строке после задания:
 // - создайте enumeration с разными направлениями музыки, а-ля pop, rock, classic и т.д.
 
enum musicGenre: String {
    case POP = "Creed"
    case Rap = "2Pac"
    case Rock = "LinkinPark"
    case Classic = "Bethoween"
}
 // - объявите константу myFavoriteStyle и присвойте ей любое значение из enumeration
var myFavouriteStyle = musicGenre.Rap
 
 // - распечатайте каждое значение enumeration, используя итерацию
print(musicGenre.Classic)
print(musicGenre.POP)
print(musicGenre.Rap)
print(musicGenre.Rock)
 
 // - добавьте в enumeration raw value типа String, которое будет являться именем исполнителя данного жанра

 // - проинициализируйте константу singerStyle, используя rawValue
let singerStyle = musicGenre.Rap

// - напишите switch statement, который будет сравнивать singerStyle с cases для каждого направления музыки и печатать название какой-нибудь песни соответствующего жанра
var genreMusic = "POP"
switch genreMusic {
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
    case small(Ingredients: [String])
    case medium(Ingredients: [String])
}
var bigPizza = pizza.Big(Ingredients: ["tomatoes", "cucumber", "spicy","meat"])
var smallPizza = pizza.small(Ingredients: ["tomatoes", "spicy"])
var mediumPizza = pizza.medium(Ingredients: ["cucumber", "spicy", "tomatoes"])

 // - Создайте три константы, которым присвойте три разных значения из enum с пиццой.


 // - Напишите switch, который будет выводить в консоль сообщение о размере заказанной пиццы и дополнительных ингредиентах. Что-то типа "Your order is - The big pizza with mashrooms, sheese, bacon".
var order = "smallPizza"
switch (order) {
case("bigPizza"):
    print("Your order is the big pizza with \(bigPizza)")
case("smallPizza"):
    print("Your order is the small pizza with \(smallPizza)")
case("mediumPizza"):
    print("Your order is the medium pizza\(mediumPizza)")
default:
    print("You don't have an order")
}
/*
 TODO: - ❓ Вопросы к изучению (писать ответы не нужно, но быть готовым ответить):
 - Что такое enumerations?
 - Для чего нужен протокол CaseIterable?
 - Что такое Recursive Enumerations?
 */
