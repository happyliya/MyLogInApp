//
//  User.swift
//  LogInApp
//
//  Created by HappyLiya on 07.02.2021.
//

struct User {
    let userName: String
    let password: String
    let person: Person
}

struct Person {
    let name: String
    let surname: String
    let age: Int
    let from: String
    let moreInfo: MoreInfo
   // let iCan: [ILike]
}

struct MoreInfo {
    let hobby: String
    let family: String
    let pets: String
    let aboutMe: String
}

extension User {
    static func getInformation() -> User {
        User(userName: "Login",
             password: "123456",
             person: Person(name: "Наталья",
                            surname: "Кирсанова",
                            age: 31, from: "Москва",
                            moreInfo: MoreInfo(hobby: "Кататься на велосипеде летом и на коньках зимой, учиться новому, рисовать в программе Procreate",
                                               family: "Муж Денис, дети - Герман и Тимофей",
                                               pets: "Хуч и Персик - чихуахуа",
                                               aboutMe: "Я классная, это все я пишу ночью и очень хочу поспать)")))
    }
}
//enum ILike: String {
//    case toDo = "кататься: летом - на велосипеде, зимой - на коньках, рисовать, фотографировать, учиться"
//    case thing = "на пианино и совсем немного на гитаре"
//    case make = "мыло, шарлотку, пчелку из бисера и приложение, которое определяет, какой день недели был в ту или иную дату"
//
//}
