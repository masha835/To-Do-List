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
    var dueDate: Date
    var notes: String?
    
    static func loadToDos() -> [ToDo]? {
        return nil
    }
    static func loadSampleToDos() -> [ToDo] {
        return [
            ToDo(title: "Дело 1", isComplete: false, dueDate: Date(), notes: "Заметка 1"),
            ToDo(title: "Дело 2", isComplete: false, dueDate: Date(), notes: " Pfvtnrf 2"),
            ToDo(title: "dd", isComplete: false, dueDate: Date(), notes: "dd2"),
            ToDo(title: "dddd", isComplete: false, dueDate: Date(), notes: "dhdhffy"),
        
        ]
    }
    static let dueDateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        formatter.timeStyle = .short
        return formatter
    }()
}
