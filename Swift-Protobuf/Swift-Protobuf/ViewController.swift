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
        
        getUserInfoList()
    }
    
    func getUserInfoList() {
        //
        Alamofire.request("http://localhost:8080/users").responseData { (dataResponse) in
            
            guard let data = dataResponse.result.value else {
                print("no data")
                return
            }
            if dataResponse.response?.statusCode == 200 {
                //
                do {
                    let list = try UserList(serializedData: data)
                    print(list)
                } catch {
                    print("response error")
                }
            } else if dataResponse.response?.statusCode == 400 {
                // Bad Request
                do {
                    let errorRes = try ErrorResponse(serializedData: data)
                    print(errorRes)
                } catch {
                    print("response error")
                }
            } else if dataResponse.response?.statusCode == 201 {
                // Bad Request
                do {
                    let info = try SimpleInfo(serializedData: data)
                    print(info)
                } catch {
                    print("response error")
                }
            } else {
                print("unknown error")
            }
        }
        
    }
    
    func storeUserList(_ count: Int32) {
        
        var list = UserList()

        for index in 1...count {
            
            var user = User()
            user.id = index
            user.name = "gong_\(index)"
            user.mobile = "139-0987-\(index)"
            
            list.users.append(user)
        }
        
        list.hasMore_p = true
        list.info = " a list of users"
        
        do {
            let data = try list.jsonUTF8Data()
            UserDefaults.standard.set(data, forKey: "protobuf_key")
            print("success")
        } catch {
            print(error)
        }
    }
    
    func getUserList() -> UserList? {
        guard let data = UserDefaults.standard.data(forKey: "protobuf_key") else { return nil }
        do {
            return try UserList(jsonUTF8Data: data)
        } catch {
            return nil
        }
    }

}

