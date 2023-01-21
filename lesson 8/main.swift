//
//  main.swift
//  lesson 8
//
//  Created by merim kasenova on 21/1/23.
//

import Foundation

//Игра - Кто хочет стать миллионером?

var questions: [String: [String:[String: Bool]]] =
["В какие годы проходила вторая мировая?": ["a": ["1941-1945" : false], "b": ["1939-1945": true], "c": ["1937-1945": false], "d": ["1914-1917": false]],
 "Год образования Гиктек?" : ["a": ["2019": false], "b": ["2017": false], "c": ["2018":true], "d": ["2020" :false]],
 "Столица Португалии" : ["a": ["лиссабон":true], "b": ["париж":false], "c": ["мадрид":false], "d": ["порту":false]]
]

var prize: Int = 0

var isFinish = true

for (question,answers) in questions {
    if isFinish == true {
        break
    }
    print("\(question) варианты ответов: \(answers) ")
    
    print("Ваш ответ")
    var answer = readLine()
    
    for (variant, variants) in answers {
        
        for (otvet,correct) in variants {
            if answer == otvet && correct == true {
                prize += 1000
                print("Правильный ответ, у вас \(prize) сомов!")
                break
            } else {
                isFinish = true
                print("Неправильный ответ!")
                break
            }
        }
    }
    print(prize)
}

