//
//  PostStr.swift
//  Navigation
//
//  Created by Миронов Илья on 25.09.2021.
//

struct Post {
    var title: String = ""

    mutating func setTitle(_ title: String) {
        self.title = title
    }
}
