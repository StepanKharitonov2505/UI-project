//
//  UserFriendlyArray.swift
//  VKontakte2.0
//
//  Created by Степан Харитонов on 12.11.2021.
//
import Foundation
import UIKit

class UserRepository {
    var userBlock = [UserFriendly]()
    
    init() {
            setupArray()
        }
    
    func setupArray() {
        let user1 = UserFriendly(name: "Murana",surname: "Satomi" ,imagename: PhotoArray.init(namePhotoUser: "Murana", isLikedPhoto: false))
        let user2 = UserFriendly(name: "Ирелия",surname: "Зан" ,imagename: PhotoArray.init(namePhotoUser: "Ирелия", isLikedPhoto: false))
        let user3 = UserFriendly(name: "Дэниэл",surname: "Крейг" ,imagename: PhotoArray.init(namePhotoUser: "Дэниэл", isLikedPhoto: false))
        let user4 = UserFriendly(name: "Мэтью",surname: "Макконахи" ,imagename: PhotoArray.init(namePhotoUser: "Мэтью", isLikedPhoto: false))
        let user5 = UserFriendly(name: "Алиса",surname: "Сигман" ,imagename: PhotoArray.init(namePhotoUser: "Алиса", isLikedPhoto: false))
        let user6 = UserFriendly(name: "Альберт",surname: "Вачовски" ,imagename: PhotoArray.init(namePhotoUser: "Альберт", isLikedPhoto: false))
        let user7 = UserFriendly(name: "Скарлетт",surname: "Йоханссон" ,imagename: PhotoArray.init(namePhotoUser: "Скарлетт", isLikedPhoto: false))
        let user8 = UserFriendly(name: "Трандуил",surname: "Дориат" ,imagename: PhotoArray.init(namePhotoUser: "Трандуил", isLikedPhoto: false))
        let user9 = UserFriendly(name: "Александр",surname: "Иванов-Крамской" ,imagename: PhotoArray.init(namePhotoUser: "Александр", isLikedPhoto: false))
        let user10 = UserFriendly(name: "Фердинад",surname: "Карулли" ,imagename: PhotoArray.init(namePhotoUser: "Фердинанд", isLikedPhoto: false))
        let user11 = UserFriendly(name: "Асуна",surname: "Юки" ,imagename: PhotoArray.init(namePhotoUser: "Асуна", isLikedPhoto: false))
        let user12 = UserFriendly(name: "Дензел",surname: "Вашингтон" ,imagename: PhotoArray.init(namePhotoUser: "Дэнзэл", isLikedPhoto: false))
        
        userBlock.append(user1)
        userBlock.append(user2)
        userBlock.append(user3)
        userBlock.append(user4)
        userBlock.append(user5)
        userBlock.append(user6)
        userBlock.append(user7)
        userBlock.append(user8)
        userBlock.append(user9)
        userBlock.append(user10)
        userBlock.append(user11)
        userBlock.append(user12)
        
    }
    
}

