//
//  ToDo.swift
//  To Do List
//
//  Created by student on 23.10.2018.
//  Copyright © 2018 student555. All rights reserved.
//

import Foundation

struct ToDo {
    var title: String
    var isComplete: Bool
    var duedate: Date
    var notes: String
    
    static func loadToDos() -> [ToDo]? {
        return nil
    }
    static func loadSampleToDos() -> [ToDo] {
        return [
            ToDo(title: "Дело 1", isComplete: false, duedate: Date(), notes: "Заметка 1"),
            ToDo(title: "Дело 2", isComplete: false, duedate: Date(), notes: " Pfvtnrf 2"),
            ToDo(title: "dd", isComplete: false, duedate: Date(), notes: "dd2"),
            ToDo(title: "dddd", isComplete: false, duedate: Date(), notes: "dhdhffy"),
        
        ]
    }
}
