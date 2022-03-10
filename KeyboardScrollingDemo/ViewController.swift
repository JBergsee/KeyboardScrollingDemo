//
//  ViewController.swift
//  KeyboardScrollingDemo
//
//  Created by Johan Nyman on 2022-03-09.
//

import UIKit

class ViewController: UIViewController {

    private var example1VC:InfoViewController?
    private var example2VC:JourneyLogViewController?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //Load  view controllers
        
        let sb = UIStoryboard(name: "InfoBoard", bundle: .main)
        example1VC = (sb.instantiateViewController(withIdentifier: "Info") as? InfoViewController)!
        
        example2VC = JourneyLogViewController.initFromStoryboard()
    }


    @IBAction func loadExample1() {
        self.navigationController?.pushViewController(example1VC!, animated: true)
    }
    
    @IBAction func loadExample2() {
        self.navigationController?.pushViewController(example2VC!, animated: true)
    }
    
}

