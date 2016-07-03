//
//  ViewController.swift
//  FunFacts
//
//  Created by Mike Liao on 6/30/16.
//  Copyright © 2016 Mike Liao. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var funFactButton: UIButton!
    @IBOutlet weak var funFactLabel: UILabel!
    
    let factBook = FactBook()
    let colorWheel = ColorWheel()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        funFactLabel.text = factBook.randomFact()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func showFunFact() {
        var randomColor = colorWheel.randomColor()
        view.backgroundColor = randomColor
        funFactButton.tintColor = randomColor
        funFactLabel.text = factBook.randomFact()
    }

}

