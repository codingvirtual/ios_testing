//
//  ViewController.swift
//  IOSTestingKitchenSink
//
//  Created by Grant Kemp on 07/09/2015.
//  Copyright (c) 2015 Grant Kemp. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate {

    @IBOutlet var out_tbl_view: UITableView!
    
    let lessonsToShow = LessonsConstants.sharedInstance().lesson
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    //MARK: TableView Methods
    
     func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let lessonItemToShow = "lessonsToShow\(indexPath.row)"
        performSegueWithIdentifier(lessonItemToShow, sender: self)
    }
    
     func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return lessonsToShow.count
    }
    
    
     func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell") as UITableViewCell!
        
        cell.textLabel?.text = lessonsToShow[indexPath.row]
        return cell
    }

}

