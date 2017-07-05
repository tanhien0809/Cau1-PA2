//
//  ViewController.swift
//  Cau1-PA2
//
//  Created by Cntt10 on 7/5/17.
//  Copyright © 2017 theswiftproject. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        Queue()
    }
    func Queue()
    {
        let thread1 = DispatchQueue(label:"thread red ", qos: .userInitiated)
        let thread2 = DispatchQueue(label:"thread green ", qos: .userInitiated)
        let thread3 = DispatchQueue(label:"thread black ", qos: .userInitiated)
        
        thread1.async {
            for i in 0..<10{
                print("🔴",i)
            }
        }
        thread2.async {
            for i in 100..<110{
                print("🔵",i)
            }
        }
        thread3.async {
            for i in 1000..<1010{
                print("⚫️",i)
            }
        }
        
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

