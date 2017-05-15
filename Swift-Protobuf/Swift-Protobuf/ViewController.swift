//
//  ViewController.swift
//  Swift-Protobuf
//
//  Created by gongruike on 2017/5/15.
//  Copyright © 2017年 gongruike. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        storeStudents(100)
        
        print("students \(getStudents())")
    }

    /*
    func storeStudent(_ sid: Int32) {
        var student = Student()
        student.id = sid
        student.name = "gong_\(sid)"
        student.email = "gong__\(sid)@gmail.com"
        student.mobile = "139-0987-_\(sid)"
        do {
            let data = try student.jsonUTF8Data()
            UserDefaults.standard.set(data, forKey: "protobuf_key")
            print("success")
        } catch {
            print(error)
        }
    }
    
    func getStudent() -> Student? {
        guard let data = UserDefaults.standard.data(forKey: "protobuf_key") else { return nil }
        do {
            return try Student(jsonUTF8Data: data)
        } catch {
            return nil
        }
    }
    */
    
    func getStudeltInfoList() {
        //
        Alamofire.request("").responseData { (dataResponse) in
            
            guard let data = dataResponse.result.value else {
                print("no data")
                return
            }
            if dataResponse.response?.statusCode == 200 {
                //
                do {
                    let studentsInfo = try Students(jsonUTF8Data: data)
                    print(studentsInfo)
                } catch {
                    print("response error")
                }
            } else if dataResponse.response?.statusCode == 400 {
                // Bad Request
                do {
                    let errorRes = try ErrorResponse(jsonUTF8Data: data)
                    print(errorRes)
                } catch {
                    print("response error")
                }
            } else if dataResponse.response?.statusCode == 201 {
                // Bad Request
                do {
                    let info = try SimpleInfo(jsonUTF8Data: data)
                    print(info)
                } catch {
                    print("response error")
                }
            } else {
                print("unknown error")
            }
        }
        
    }
    
    func storeStudents(_ count: Int32) {
        
        var students = Students()

        for index in 1...count {
            
            var student = Student()
            student.id = index
            student.name = "gong_\(index)"
            student.email = "gong_\(index)@gmail.com"
            student.mobile = "139-0987-\(index)"
            
            students.students.append(student)
        }
        
        students.hasMore_p = true
        students.info = " a list of students"
        
        
        do {
            let data = try students.jsonUTF8Data()
            UserDefaults.standard.set(data, forKey: "protobuf_key")
            print("success")
        } catch {
            print(error)
        }
    }
    
    func getStudents() -> Students? {
        guard let data = UserDefaults.standard.data(forKey: "protobuf_key") else { return nil }
        do {
            return try Students(jsonUTF8Data: data)
        } catch {
            return nil
        }
    }

}

