//
//  ViewController.swift
//  DemoBarCodeGen
//
//  Created by Aldo Lugo on 5/5/17.
//  Copyright © 2017 Aldo Lugo. All rights reserved.
//

import UIKit
import QRCode
import Alamofire
import SwiftyJSON

class ViewController: UIViewController {

    
    @IBOutlet weak var barCodeView: UIImageView!
    
   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.barCodeView.image = {
            var qrCode = QRCode("aldomatic")!
            qrCode.size = self.barCodeView.bounds.size
            qrCode.backgroundColor = CIColor(rgba: "230F2B")
            qrCode.color = CIColor(rgba: "F21D41")
            return qrCode.image
        }()
        
        
//        Alamofire.request("https://jsonplaceholder.typicode.com/users").responseJSON { response in
//            if let data = response.result.value {
//                let json = JSON(data)
//                //self.apiResults = json["results"].arrayValue
//                print(json)
//            }
//        }

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    func saveUserData(){
        
        
        
    }
    
    
    


}

