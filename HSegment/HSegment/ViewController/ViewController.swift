//
//  ViewController.swift
//  HSegment
//
//  Created by Angelos Staboulis on 28/5/21.
//

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBOutlet var segment: HSegment!
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        segment.frame = CGRect(x: 0, y: 30, width: 300, height: 146)
        segment.segments = 10
        segment.createButton(index: 0, title: "Test331")
        segment.createButton(index: 1, title: "Test2")
        segment.createButton(index: 2, title: "Test3")
        segment.createButton(index: 3, title: "Test4")
        segment.createButton(index: 4, title: "Test5")
        segment.createButton(index: 5, title: "Test6")
        segment.createButton(index: 6, title: "Test7")
        segment.createButton(index: 7, title: "Test8")
        segment.createButton(index: 8, title: "Test9")
        segment.createButton(index: 9, title: "Test10")
        
    }
   
}
