//
//  ViewController.swift
//  Downloading Web Content
//
//  Created by Mustafa Mohamed on 17/12/2015.
//  Copyright (c) 2015 Mustafa Mohamed. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var webView: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        let url = NSURL(string:"https://www.stackoverflow.com")!
        
        webView.loadRequest(NSURLRequest(URL: url))
        
        
        //task will create session.(Open virtual browser opens)
        //Loads contents of URL into the data variable if successful
        //info about data will be put into response
        //if there is an error this will go into error
        /*let task = NSURLSession.sharedSession().dataTaskWithURL(url, completionHandler: { (data, response, error) -> Void in
            //code that goes here will run when task completes
            
            if let urlContent = data{
                
                let webContent = NSString(data: urlContent, encoding: NSUTF8StringEncoding)
                
                
                dispatch_async(dispatch_get_main_queue(), { () -> Void in
                    self.webView.loadHTMLString(String(webContent!), baseURL: nil)
                })
                
                
                
            }
            else{
                //show Error message
            }
            
        })
        
        task.resume()
        
        */
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

