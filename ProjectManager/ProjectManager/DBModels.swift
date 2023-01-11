//
//  DBModels.swift
//  ProjectManager
//
//  Created by naresh-pt6259 on 06/01/23.
//

import Foundation

class Project: Dict {
    var projectID: Int?
    var projectTitle: String
    var projectArea: String
    var student1: Int64
    var student2: Int
    var student3: Int
    var mentorID: Int
    var progress: Int
    
    init(projectID: Int? = nil, projectTitle: String, projectArea: String, student1: Int64, student2: Int, student3: Int, mentorID: Int, progress: Int) {
        self.projectID = projectID
        self.projectTitle = projectTitle
        self.projectArea = projectArea
        self.student1 = student1
        self.student2 = student2
        self.student3 = student3
        self.mentorID = mentorID
        self.progress = progress
    }
}

class Student: Dict {
    var studentId: Int?
    var studentName: String
    var department: String
    var contact: Int
    var mentorId: Int
    
    init(studentId: Int? = nil, studentName: String, department: String, contact: Int, mentorId: Int) {
        self.studentId = studentId
        self.studentName = studentName
        self.department = department
        self.contact = contact
        self.mentorId = mentorId
    }
}

class Mentor: Dict {
    var mentorId: Int?
    var mentorName: String
    var areaOfSpec: String
    var dept: String
    var contact: Int
    var noOfBatch: Int
    
    init(mentorId: Int? = nil, mentorName: String, areaOfSpec: String, dept: String, contact: Int, noOfBatch: Int) {
        self.mentorId = mentorId
        self.mentorName = mentorName
        self.areaOfSpec = areaOfSpec
        self.dept = dept
        self.contact = contact
        self.noOfBatch = noOfBatch
    }
}
