//
//  ViewController.swift
//  Twiit-Sentiment
//
//  Created by Emil Vaklinov on 12/01/2021.
//

import UIKit
import SwifteriOS

class ViewController: UIViewController {
    
    @IBOutlet weak var backgroundView: UIView!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var sentimentLabel: UILabel!
    
    // Instantiation using Twitter's OAuth Consumer Key and secret
//   let swifter = Swifter(consumerKey: TWITTER_CONSUMER_KEY, consumerSecret: TWITTER_CONSUMER_SECRET)
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        swifter.searchTweet(using: "@Apple", lang: "en", count: 100, tweetMode: .extended, success: { (results, metadata) in
            print(results)
        }) { (error) in
            print("There was an error with Twitter API Request, \(error)")
        }
        
        
    }
    
    @IBAction func predictPressed(_ sender: Any) {
        
        
    }
    
}
