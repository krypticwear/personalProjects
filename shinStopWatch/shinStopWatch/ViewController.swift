//
//  ViewController.swift
//  shinStopWatch
//
//  Created by David on 2014-09-29.
//  Copyright (c) 2014 David. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var initial = 0
    var timer = NSTimer()
    
    @IBOutlet weak var viewCounter: UILabel!
    
    @IBAction func playButton(sender: AnyObject) {
        
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("counterResult"), userInfo: nil, repeats: true)
        
    }
    
    func counterResult() {
        
        initial++
        viewCounter.text = toString(initial)
        
    }
    
    @IBAction func pauseButton(sender: AnyObject) {
        
        timer.invalidate()
    }
    
    @IBAction func resetButton(sender: AnyObject) {

        initial=0
        timer.invalidate()
        viewCounter.text = toString("0")
        

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

