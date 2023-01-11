//
//  main.swift
//  ProjectManager
//
//  Created by naresh-pt6259 on 05/01/23.
//

import Foundation

var db = DBApi()


//db.insertQueryGenerator(data: Project(projectTitle: "Pasfda", projectArea: "fasdf", student1: 1234, student2: 2345, student3: 789, mentorID: 4839, progress: 0), tableName: "Projects")
db.insertQueryGenerator(data: Student(studentName: "Anand", department: "Cse", contact: 234545, mentorId: 4893), tableName: "Students")
//db.insertRow(data: Mentor(mentorName: "alfdjasl", areaOfSpec: "alsdjkf", dept: "kldflk", contact: 2354354, noOfBatch: 0))
//print()
//for (_, value) in Project(projectTitle: "Pasfda", projectArea: "fasdf", student1: 1234, student2: 2345, student3: 789, mentorID: 4839, progress: 0).toDict().enumerated() {
//    print("\(value.key) : \(value.value)")
//}


