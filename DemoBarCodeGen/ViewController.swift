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
import FirebaseDatabase

class ViewController: UIViewController {

    // OUTLETS
    @IBOutlet weak var barCodeView: UIImageView!
    
    // PROPS
    var ref: FIRDatabaseReference?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.ref = FIRDatabase.database().reference()
        self.barCodeView.image = {
            var qrCode = QRCode("aldomatic")!
            qrCode.size = self.barCodeView.bounds.size
            qrCode.backgroundColor = CIColor(rgba: "230F2B")
            qrCode.color = CIColor(rgba: "F21D41")
            return qrCode.image
        }()
        //self.saveUserData()
        self.findByUserName()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func saveUserData(){
        self.ref?.child("posts").setValue(["body": "Just some sample posts"])
    }
    
    func findByUserName(){
        self.ref?.child("users").child("aldomatic").observeSingleEvent(of: FIRDataEventType.value, with: { (data) in
            let json = JSON(data.value as Any)
            print(json["email"])
        })
    }
    
    
    


}

