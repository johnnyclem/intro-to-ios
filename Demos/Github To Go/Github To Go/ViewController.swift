//
//  ViewController.swift
//  Github To Go
//
//  Created by John Clem on 2/10/15.
//  Copyright (c) 2015 learnSwift. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.repos.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        var cell = tableView.dequeueReusableCellWithIdentifier("Cell", forIndexPath: indexPath) as UITableViewCell
        
        cell.textLabel!.text = self.repos[indexPath.row]
        
        return cell
        
        
    }
    
    var repos = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let endpoint = NSURL(string: "https://api.github.com/search/repositories?q=Swift+language:assembly&sort=stars&order=desc") {
            let data = NSData(contentsOfURL: endpoint)
            if let json: NSDictionary = NSJSONSerialization.JSONObjectWithData(data!, options: NSJSONReadingOptions.MutableContainers, error: nil) as? NSDictionary {
                if let items = json["items"] as? NSArray {
                    for item in items {
                        if let name = item["name"] as? String {
                            repos.append(name)
                        }
                    }
                }
            }
            
        }
        
        self.tableView.reloadData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

