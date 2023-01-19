//
//  DBManager.swift
//  ProjectManager
//
//  Created by naresh-pt6259 on 06/01/23.
//

import Foundation
import SQLite3

protocol Manager {
    static var db: OpaquePointer? { get }
    
    static func openDatabase()
//    func insertRow()
    func updateDetails()
    func deleteDetails()
    
}

class DBManager: Manager {
    static var db: OpaquePointer?
    
//    init() {
//        openDatabase()
//    }
    
    static func openDatabase(){
        //Database path generation
        let dbPath = try? FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: false).appendingPathComponent("Swift_Console_App/ProjectManager/ProjectManager.sqlite")
        
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
    
    func insertRow(insertString: String) {
        var insertStatement: OpaquePointer?
        
        if sqlite3_prepare_v2(DBManager.db, insertString, -1, &insertStatement, nil) == SQLITE_OK {
            if sqlite3_step(insertStatement) == SQLITE_DONE {
                print("Inserted successfully")
                
            }
            else {
                print("Insertion Error: \(String(describing: sqlite3_errmsg(insertStatement)))")
            }
        }
    }
    
    func updateDetails() {
        
    }
    
    func deleteDetails() {
        
    }
    
}
