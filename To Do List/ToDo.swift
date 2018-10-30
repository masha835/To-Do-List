//
//  ToDo.swift
//  To Do List
//
//  Created by student on 23.10.2018.
//  Copyright © 2018 student555. All rights reserved.
//

import Foundation
import Realm
import RealmSwift

class ToDo: Object {
    @objc dynamic var title: String = ""
    @objc dynamic var isComplete: Bool = false
    @objc dynamic var dueDate: Date = Date()
    @objc dynamic var notes: String? = nil
    
    static let realm = try! Realm()
    
    
    init(title: String, isComplete: Bool, dueDate: Date, notes: String?) {
        self.title = title
        self.isComplete = isComplete
        self.dueDate = dueDate
        self.notes = notes
        super.init()
    }
    
    
    required init() {
        super.init()
    }
    
    required init(realm: RLMRealm, schema: RLMObjectSchema) {
        super.init(realm: realm, schema: schema)
    }
    
    required init(value: Any, schema: RLMSchema) {
        super.init(value: value, schema: schema)
    }
    
    
    static func loadToDos() -> [ToDo]? {
        var todos = [ToDo]()
        let todoObject = realm.objects(ToDo.self)
        print(#function, todoObject.count)
        todoObject.forEach{ todos.append($0)}
        return todos
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
