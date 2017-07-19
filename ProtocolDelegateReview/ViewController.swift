//
//  ViewController.swift
//  ProtocolDelegateReview
//
//  Created by Shaan Mirchandani 
//  Copyright © 2017 Shaan Mirchandani. All rights reserved.
//

import UIKit

class ViewController: UIViewController, demoProtocol {

    var vc : vc2? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()

    
    }
    
    override func viewDidAppear(_ animated: Bool) {
        let story = UIStoryboard.init(name: "Main", bundle: nil)
        vc = story.instantiateViewController(withIdentifier: "vc2") as! vc2
        vc!.demoProtocolVar = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func buttonFnc(_ sender: Any) {
   
        self.present(vc!, animated: true, completion: nil)
    
    }
    
    func demoProtocolFunc() {
        print("The method in first vc is call")
    }

}

