//
//  ViewController.swift
//  customTableView
//
//  Created by Peter Zaporowski on 09.03.2017.
//  Copyright © 2017 Peter Zaporowski. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    var someArray = ["http://www.dogster.com/wp-content/uploads/2017/01/laryngeal-paralysis-in-dogs.jpg", "http://r.ddmcdn.com/s_f/o_1/cx_633/cy_0/cw_1725/ch_1725/w_720/APL/uploads/2014/11/too-cute-doggone-it-video-playlist.jpg", "http://r.ddmcdn.com/w_830/s_f/o_1/cx_0/cy_220/cw_1255/ch_1255/APL/uploads/2014/11/dog-breed-selector-australian-shepherd.jpg", "http://cdn-img.health.com/sites/default/files/styles/400x400/public/styles/main/public/dogs-pembroke-welsh-corgi-400x400.jpg", "https://pupjournal.com/wp-content/uploads/2016/06/westie-on-beach.jpg"]
    
    var someTitles = ["This dog is cute", "Hey there :)", "Woof Woof!", "I like food", "Odie looks like me!"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
     
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCellWithIdentifier("CustomCell") as? CustomCell {
            
            var img: UIImage!
            
            let url = NSURL(string: someArray[indexPath.row])!
            if let data = NSData(contentsOfURL: url){
                img = UIImage(data: data) //if let data gets image from Internet, it can be used in the app
            } else {
                img = UIImage(named: "cute-dog")
            }
            
            cell.configureCell(img, text: someTitles[indexPath.row])
            
           return cell
        }
        else{
            return CustomCell()
        }
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return someArray.count
    }
}

