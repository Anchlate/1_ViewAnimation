//
//  ViewController.swift
//  ViewAnimation
//
//  Created by PENG BAI on 16/1/21.
//  Copyright © 2016年 bp1010. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var myView: UIView!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        myView.frame = CGRectMake(0, 0, 200, 30);
//        myView.center = self.view.center;
        
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
//        self.myView.center.x -= view.bounds.width
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        
        
        // .Repeat:不断地重复动画
        // .AutoReverse来回重复动画，但是只有与.Repeat同时用的时候才会有这样的效果
        UIView.animate(withDuration: 1.5, delay: 0, options: [.autoreverse, .repeat], animations: { () -> Void in
            
            self.myView.center.x += (self.view.bounds.width - 100)
            
            }, completion: nil)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

