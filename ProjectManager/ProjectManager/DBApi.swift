//
//  DBApi.swift
//  ProjectManager
//
//  Created by naresh-pt6259 on 06/01/23.
//

import Foundation

protocol Dict {}

extension Dict {
    func toDict() -> [String: Any?] {
        var dict = [String:Any]()
        let otherSelf = Mirror(reflecting: self)
        for child in otherSelf.children {
            if let key = child.label {
                dict[key] = child.value
            }
        }
        return dict
    }
}


class DBApi {
    var db: DBManager = DBManager()
    
    init() {
        DBManager.openDatabase()
    }
    
    func insertQueryGenerator<T: Dict> (data: T, tableName: String) {
        var queryName: String = "Insert into \(tableName)("
        var queryValues: String = " Values ("
        
        let dataDict: [String: Any?] = data.toDict()
        
        for ( index, values) in dataDict.enumerated() {
            if let value = values.value {
                dataDict.count - 1 != index ? queryName.append("\(values.key),"): queryName.append("\(values.key))")
                dataDict.count - 1 != index ? queryValues.append("'\(value)', "): queryValues.append("'\(value)');")
            }
        }
        
        print()
        db.insertRow(insertString: queryName + queryValues)
    }
}
