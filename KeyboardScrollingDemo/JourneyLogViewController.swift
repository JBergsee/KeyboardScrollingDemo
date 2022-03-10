//
//  JourneyLogViewController.swift
//  JourneyLog
//
//  Created by Johan Nyman on 2022-02-16.
//

import UIKit


public class JourneyLogViewController: MultiPageViewController {

   
    enum JourneyLogPage:Int, CustomStringConvertible, CaseIterable {
        case remarks
        case info

        var description: String {
            switch self {
            case .remarks:
                return "Remarks"
            case .info:
                return "Info"
            }
        }
    }
    
    private lazy var viewControllers:[UIViewController] = Array()
    
    @IBOutlet var footer:UIView!

    public static func initFromStoryboard() -> Self {
        let storyboard = UIStoryboard(name: "JourneyLogBoard", bundle: .main)
        return storyboard.instantiateViewController(withIdentifier: "JourneyLogViewController") as! Self
    }
    
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        createViewControllers()
    }
    
    public override func viewControllerForPage(_ pageNumber: Int) -> UIViewController {
        return viewControllers[pageNumber]
    }
    
    public override func numberOfPages() -> Int {
        return JourneyLogPage.allCases.count
    }
    
    public override func titleForPage(_ nbr: Int) -> String {
        return JourneyLogPage(rawValue:nbr)?.description ?? "No title"
    }
    
    private func createViewControllers() {

        //Load the viewControllers
        var viewController:UIViewController
        
        for page in JourneyLogPage.allCases {
        
            switch page {
            
            case .remarks:
                let sb = UIStoryboard(name: "RemarksBoard", bundle: .main)
                viewController = (sb.instantiateViewController(withIdentifier: "Remarks") as? RemarksViewController)!
            
            
        case .info:
                let sb = UIStoryboard(name: "InfoBoard", bundle: .main)
                viewController = (sb.instantiateViewController(withIdentifier: "Info") as? InfoViewController)!
            }
            
            
            self.viewControllers.append(viewController)
        }
            
    }

}
