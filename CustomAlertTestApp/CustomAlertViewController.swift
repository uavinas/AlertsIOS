//
//  CustomAlertViewController.swift
//  CustomAlertTestApp
//
//  Created by Ishan Weerasooriya on 5/30/17.
//  Copyright © 2017 Elegant Media. All rights reserved.
//

import UIKit
import JSSAlertView
import Alamofire
import SwiftyJSON

class CustomAlertViewController: UIViewController {

    
    //MARK: Outlets
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func customAlert1(_ sender: Any) {
        
        //Custom alter1 with no button and delay time and with title
        JSSAlertView().show(self, title: "Alert 1 with title but without buttons", text: "This is the test alert",noButtons: true, delay: 3)
    
    }
    
    
    @IBAction func customAlert2(_ sender: Any) {
        
        JSSAlertView().show(self, title: "Alert 2 with title and with button", text: "This is the test alert", buttonText: "Click")
        
    }
    
    
    @IBAction func customAlert3(_ sender: Any) {
        
        JSSAlertView().show(self, title: "Alert 3 with title and button and color", text: "This is the test alert", buttonText: "Ok", color: UIColorFromHex(0x9b59b6, alpha: 1))
    }
    
    
    @IBAction func customAlert4(_ sender: Any) {
        
       requestUsingPod()
        JSSAlertView().show(self, title: "Data Requested", text: "data request test", buttonText: "OK", cancelButtonText: "Cancle", delay: 3)
        
    }
   
    
    @IBAction func customAlert5(_ sender: Any) {
        
    }
    
    func requestUsingPod() {
    
        Alamofire.request("http://jsonplaceholder.typicode.com/users/1").responseJSON { response in
            
//            print(response.data)
//            print(response.request)
//            print(response.result)
//            print(response.response)
            
            if let JSON = response.result.value{
            
                print("JSON: \(JSON)")
            }
            
            let json = JSON(data: response.data!)
            
//            if let name = json["name"].string {
//                print(name)
//
//            }
            
            let name = json["name"].string
            print(name!)
            
            
            let address = json["address"]["street"].string
            print(json["address"]["street"])
            
            let zipcode = json["address"]["zipcode"].string
            print(json["address"]["zipcode"])
    }
       }
    
    /*
    ▿ {
    "name" : "Leanne Graham",
    "email" : "Sincere@april.biz",
    "id" : 1,
    "website" : "hildegard.org",
    "address" : {
    "geo" : {
    "lat" : "-37.3159",
    "lng" : "81.1496"
    },
    "street" : "Kulas Light",
    "suite" : "Apt. 556",
    "city" : "Gwenborough",
    "zipcode" : "92998-3874"
    },
    "phone" : "1-770-736-8031 x56442",
    "company" : {
    "name" : "Romaguera-Crona",
    "catchPhrase" : "Multi-layered client-server neural-net",
    "bs" : "harness real-time e-markets"
    },
    "username" : "Bret"
    }
    */
    
    
    
    @IBAction func customALert5(_ sender: Any) {
        
        displayJSONData()
        
    }
    
    func displayJSONData() {
    
        Alamofire.request("http://jsonplaceholder.typicode.com/users/1").responseJSON { response in
            
            print(response.data)
            print(response.request)
            print(response.result)
            print(response.response)
            
            let JSON = response.result.value
            print("JSON \(JSON)")
            
//            let json = JSON(data: response.data!)
//            let name = json["name"].String
//            print(name)
           
        
        }
    }
    
    
    }
    
    
    
    
    

   

