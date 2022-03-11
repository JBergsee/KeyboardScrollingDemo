//
//  ViewController.swift
//  KeyboardScrollingDemo
//
//  Created by Johan Nyman on 2022-03-09.
//

import UIKit

class ViewController: UIViewController {

    private var example2VC:JourneyLogViewController?
    private var example3VC:BaseViewController?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //Load  view controllers
        
        example2VC = JourneyLogViewController.initFromStoryboard()
        
        let sb = UIStoryboard(name: "JourneyLogBoard", bundle: .main)
        example3VC = (sb.instantiateViewController(withIdentifier: "Base") as? ViewOnBaseViewController)!
        
    }


    @IBAction func loadExample1() {
        print("No longer here.")
    }
    
    @IBAction func loadExample2() {
        self.navigationController?.pushViewController(example2VC!, animated: true)
    }
    
    @IBAction func loadExample3() {
        self.navigationController?.pushViewController(example3VC!, animated: true)
    }
    
}

