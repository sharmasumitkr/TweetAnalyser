//
//  ViewController.swift
//  TweetsAnalyser
//
//  Created by Aanchal Patial on 30/06/19.
//  Copyright © 2019 AP. All rights reserved.
//

import UIKit
import SwifteriOS

class ViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var emojiLabel: UILabel!

    // Instantiation using Twitter's OAuth Consumer Key and secret
    let swifter = Swifter(consumerKey: "AoaMzhn4B4VcCVphkCGu3VrB7", consumerSecret: "LY3pZQDiq7GBBOgecA9qNR1ZisVWj81meTZGDReuhQRg9ngYx9")
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        swifter.searchTweet(using: "@Apple", lang: "en", count: 100, tweetMode : .extended, success: { (results, metadata) in
            print(results)
        }) { (error) in
            print("Error with Twitter API requets \(error)")
        }
        
    }

    @IBAction func analyseButtonPressed(_ sender: UIButton) {
    }
    
}

