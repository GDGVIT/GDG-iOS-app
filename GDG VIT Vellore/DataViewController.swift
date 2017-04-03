//
//  DataViewController.swift
//  GDG VIT Vellore
//
//  Created by Ashwini Purohit on 04/04/17.
//  Copyright © 2017 GDG. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class DataViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Define a base URL for the API.
        let baseURL = "http://blog.gdgvitvellore.com:8000/"
        
        // Fetch all the events from the API
        
        let eventsURL = baseURL+"events"
        Alamofire.request(eventsURL, method: .get, encoding: JSONEncoding.default)
            .responseJSON { response in
                //to get status code
                if let status = response.response?.statusCode {
                    switch(status){
                    case 200:
                        print("STATUS OK")
                    case 401:
                        self.showToast(message: "Internal error")
                    default:
                        self.showToast(message: "Network error")
                    }
                }
                
                if let result = response.result.value {
                    let eventsData = JSON(result)
                    print(eventsData)
                    
                }
                // Do any additional setup after loading the view, typically from a nib.
        }
        
        // Fetch all the projects from the API
        
        let projectsURL = baseURL+"projects"
        Alamofire.request(projectsURL, method: .get, encoding: JSONEncoding.default)
            .responseJSON { response in
                //to get status code
                if let status = response.response?.statusCode {
                    switch(status){
                    case 200:
                        print("STATUS OK")
                    case 401:
                        self.showToast(message: "Internal error")
                    default:
                        self.showToast(message: "Network error")
                    }
                }
                
                if let result = response.result.value {
                    let projectsData = JSON(result)
                    print(projectsData)
                    
                }
                
        }
        
        // Fetch All the members from the API
        
        let membersURL = baseURL+"members"
        Alamofire.request(membersURL, method: .get, encoding: JSONEncoding.default)
            .responseJSON { response in
                //to get status code
                if let status = response.response?.statusCode {
                    switch(status){
                    case 200:
                        print("STATUS OK")
                    case 401:
                        self.showToast(message: "Internal error")
                    default:
                        self.showToast(message: "Network error")
                    }
                }
                
                if let result = response.result.value {
                    let membersData = JSON(result)
                    print(membersData)
                    
                }
                
        }
        
        // Do any additional setup after loading the view, typically from a nib.
        
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
