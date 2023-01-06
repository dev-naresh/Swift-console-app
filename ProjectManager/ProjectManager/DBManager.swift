//
//  DBManager.swift
//  ProjectManager
//
//  Created by naresh-pt6259 on 06/01/23.
//

import Foundation
import SQLite3

class DBManager {
    var db: OpaquePointer? = nil
    
    init() {
        openDatabase()
    }
    
    func openDatabase(){
        //Database path generation
        let dbPath = try? FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: false).appendingPathComponent("Swift_Console_App/ProjectManager/ProjectManager.sqlite")
        
//        print(try? FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: false).appendingPathComponent("Swift_Console_App/ProjectManager.sqlite"))
        
        guard let dbPath = dbPath else {
            print("Path is nil")
            return
        }
        
        //Opening database connectivity
        if sqlite3_open(dbPath.path, &db) == SQLITE_OK {
            print("Successfully opened DB at \(dbPath)")
        } else {
            print("ERROR : \(String(cString: sqlite3_errmsg(db)))")
        }
    }
}
