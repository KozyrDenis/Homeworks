import UIKit

// MARK: - 🏠 Домашнее задание.
 
// TODO: - 🧑‍💻
/* 1.
Создайте класс Student со свойством firstName. Добавьте property observer для свойства firstName, чтобы печатать сообщение каждый раз как свойство будет изменено.
 Добавьте в класс свойство isValid, которое будет проверять минимальную и максимальную длину имени. Оно не может быть короче 2 символов и длиннее 15 символов.
 */
class Student {
    lazy var greeting = "Hello our student \(firstName)"
    var firstName: String {
        willSet {
            print("name \(firstName) will be change")
        }
        didSet {
            if firstName != firstName {
                print("present name now is \(firstName)")
            }
        }
    }
    init(firstName: String = "Denis") {
        self.firstName = firstName
    }
}
@propertyWrapper
class RangedValue {
    var quantity = 10
    var countCharacter = 0
    var minCharacters = 2
    var maxCharacters = 15
    var wrappedValue: Int {
        get {
            if countCharacter < minCharacters {
                print("Your name is short")
            } else {
                print ("name is acceptable")
            }; if countCharacter > maxCharacters {
                print("You name is longer")
            } else {
                print("Name is acceptable")
            }
            return countCharacter
        }
    }
}
var nameStudent = Student.init(firstName: "Denis")
nameStudent.firstName = "Michael"
/* 2.
 Создайте класс Person со свойством age, типа Int. Добавьте property observer к свойству age, чтобы гарантировать, что свойство не может быть отрицательным. Если приходит отрицательное значение, то свойство должно возвращать 0.
 */
class Person {
    var age: Int {
        willSet {
            if age < 0 {
                print(0)
            }
        }
        didSet {
            if age > 0 {
                print("✅")
            }
        }
    }
    init(age: Int) {
        self.age = age
    }
}
var personAge = Person.init(age: 26)
personAge.age = -21
personAge.age = -1
personAge.age = -52

/*
 Создайте структуру Rectangle со свойствами width и height. Добавьте computed property с именем area, которое будет возвращать площадь прямоугольника (width * height).
 */
struct Rectangle {
    var width: Int
    var height: Int
    
    var area: Int {
        get {
            return width * height
        }
        set {
            newValue * newValue
        }
    }
    init(width: Int, height: Int) {
        self.width = width
        self.height = height
        self.area = area
    }
}
Rectangle(width: 4, height: 4)
var rec2 = Rectangle(width: 10, height: 200)
print(rec2)
rec2.area
/*
 Создайте класс User, который должен содержать имя, фамилию, возраст, рост.
 Измените свойство возраст так, чтобы при изменении его значения в консоль выводилось поздравление с Днем Рождения.
 Добавьте в класс свойства, чтобы контролировать минимальный и максимальный вес объекта (3 свойства - вес, минимальный вес и максимальный вес). При несоответствии выводить сообщение с указанием разницы и присваивать свойству пороговое значение (если ниже минимального, то минимальное и если выше максимального, то максимальное).
 Измените свойство вес так, чтобы при присваивании ему значения в консоль выводилось сообщение похудел или потостел объект.
 Создайте свойство, которое будет содержать общее количество всех созданных объектов класса User.
*/

class User {
    var name: String
    var surname: String
    lazy var weightMessage: String = "Your weight is \(weight) now. Difference is \(weight - maxWeight) from maximum weight \(maxWeight) and \(weight - minWeight) from minimum weight \(minWeight)"
    var height: Float
    var age: Int {
        willSet{
            print(age)
        }
        didSet{
            if age != 26 {
                print("Happy Birthday")
            }
        }
    }
    var minWeight: Int
    var maxWeight: Int
    var weight: Int {
        willSet {
            print("Your weight is \(weight)")
        }
        didSet{
            if weight > maxWeight {
                print(weightMessage)
            }
            if weight < minWeight {
                print(weightMessage)
            }
            weight = maxWeight
            weight = minWeight
        }
    }
    init(name: String, surname: String, height: Float, age: Int, minWeight: Int, maxWeight: Int, weight: Int) {
        self.name = name
        self.surname = surname
        self.height = height
        self.age = age
        self.minWeight = minWeight
        self.maxWeight = maxWeight
        self.weight = weight
    }
}
var Denis = User(name: "Denis", surname: "Kozyr", height: 1.45, age: 26, minWeight: 90, maxWeight: 120, weight: 200)
print(Denis.weight)
Denis.weight = 130
Denis.age = 23
var value = Denis.self

/*
 Дополнительное задание (по желанию)
 
 Решите задачу №2, используя геттер и сеттер вместо property observer
 */

/*
 TODO: - ❓ Вопросы к изучению:
 - В чем разница между stored и computed properties?
 - Что значит lazy?
 - Что такое getter и setter?
 - Когда используются property observers?
 - Зачем нужны и как используются property wrappers?
 */

