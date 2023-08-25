import UIKit

/*
 MARK: - 🏠 Домашнее задание.
 
 TODO: - 🧑‍💻 Выполните каждый из пунктов для закрепления материала. Решение пишите на следующей строке после задания:
 */
 // - проинициализируйте пустую строку let emptyString с помощью строкового литерала

let emptyString: String = ""

if emptyString.isEmpty {
    print("this is empty string")
} else {
    print("this is not empty")
}




 
 // - проинициализируйте пустую строку var message с помощью инициализатора

var message: String = String ()
if message.isEmpty {
    print("Empty")
} else {
    print("Not")
}

 
 // - проинициализируйте многострочную константу
let aFewLine: String = """
let aFewLine: String = ()
Line 1
Line 2
Line 3
"""
print(aFewLine)
 

 
 // - используя интерполяцию, создайте строку "The images were loaded", в которой вместо "The" подставьте количество картинок из переменной count (объявить)
 

var count: Int = 5
let images: String = "\(count) Images Were Loaded"
print(images)


 // - используя конкатенацию добавьте message новое значение из предыдущего пункта

let newMessage: String = message + images
print(newMessage)
 // - распечатайте в консоль количество символов в message если строка не пустая, если строка пустая - ничего делать не надо



 // - распечатайте в консоль следующие текст (три строчки с прямой речью). Строки должны начинаться с -, как в примере. Отступ для второй строки должен быть сохранен. Чтобы вставить смайлики, используйте юникод. Весь текст должен представлять собой одну константу или переменную, которую и нужно распечатать. Для формирования String можно использовать конкатенацию и/или интерполяцию.
/*
    - "Hello, how are you?" - asked he.
        - "I'm nice, thank you 😊. And you?" - answered Mary.
    - "Not so good 😒"
*/
var text: String =  " - Hello, how are you? - Asked he."
var text2: String = "  - I'm nice, thank you."
var text3 : String = "And you? - answered Mary"
let smile: String = "\u{1F60A}"
var text4: String = " -Not so good"
var smile2: String = "\u{1F612}"
let text5 = "   " + text2 + smile
var text10: String = " -Not so good"

var text7: String = " -Hello, how are you?"
var text8: String = " - Asked he."



var text9: String = text7 + text8
let text6: String = text5 + text3
var text11 = text4 + smile2
// MARK: - Task with * 🧐
/* Для выполнения этой задачи вам потребуется хорошо изучить документацию по String.

 Для многострочного текста из предыдущего задания:
 - подсчитайте количество слов в тексте
 - подсчитайте количество предложений в тексте
 - замените все глассные буквы на *

 */
 

// TODO: - ❓ Вопросы к изучению (писать ответы не нужно, но быть готовым ответить):
/*
 - Что такое конкатенация? -
 - Что такое интерполяция?
 - Что представляет из себя тип Character?
 - Что представляет из себя тип String?
 */
