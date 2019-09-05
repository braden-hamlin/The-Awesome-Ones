//
//  ViewController.swift
//  The Awesome Ones
//
//  Created by Braden Hamlin on 9/5/19.
//  Copyright © 2019 Braden Hamlin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var viewer: UIImageView!
    @IBOutlet weak var label: UILabel!
    
    var randomStart = Int.random(in: 0...7)
    var people = ["Ethan",
                   "Braden",
                   "Kyle",
                   "Reece",
                   "Max",
                   "Jessica",
                   "Sophia",
                   "Jared"]

    override func viewDidLoad() {
        super.viewDidLoad()
       
    }

    @IBAction func button(_ sender: UIButton) {
        if randomStart > people.count-1 {
            randomStart = 0
        }
        label.text = people[randomStart]
        viewer.image = UIImage(named: "\(randomStart)")
        randomStart += 1
    }
}

