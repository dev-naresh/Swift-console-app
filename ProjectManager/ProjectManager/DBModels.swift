//
//  DBModels.swift
//  ProjectManager
//
//  Created by naresh-pt6259 on 06/01/23.
//

import Foundation

class Project {
    var batchID: Int?
    var projectTitle: String
    var ProjectArea: String
    var student1: Int
    var student2: Int
    var student3: Int
    var mentorID: Int
    var progress: Int
    
    init(batchID: Int? = nil, projectTitle: String, ProjectArea: String, student1: Int, student2: Int, student3: Int, mentorID: Int, progress: Int) {
        self.batchID = batchID
        self.projectTitle = projectTitle
        self.ProjectArea = ProjectArea
        self.student1 = student1
        self.student2 = student2
        self.student3 = student3
        self.mentorID = mentorID
        self.progress = progress
    }
}

class Student {
    var studentId: Int?
    var studentName: String
    var dept: String
    var section: Character
    var contact: Int
    var mentorId: Int
    
    init(studentId: Int? = nil, studentName: String, dept: String, section: Character, contact: Int, mentorId: Int) {
        self.studentId = studentId
        self.studentName = studentName
        self.dept = dept
        self.section = section
        self.contact = contact
        self.mentorId = mentorId
    }
}

class Mentor {
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
