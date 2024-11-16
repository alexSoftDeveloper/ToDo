//
//  Category.swift
//  Todo
//
//  Created by Александр Гуркин on 16/11/24.
//

import Foundation
import RealmSwift

class Category: Object {
    @objc dynamic var name: String = ""
    let items = List<Item>()
}
