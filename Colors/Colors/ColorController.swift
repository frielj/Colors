//
//  ColorController.swift
//  Colors
//
//  Created by Jeffrey Friel on 7/14/17.
//  Copyright © 2017 Jeffrey Friel. All rights reserved.
//

import UIKit

class ColorController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let colorDictKey = ["red", "orange", "yellow", "green", "blue", "purple", "brown"]
    
    let colorDict: [String: UIColor] = ["red": UIColor.red, "orange": UIColor.orange, "yellow": UIColor.yellow, "green": UIColor.green, "blue": UIColor.blue, "purple": UIColor.purple, "brown": UIColor.brown]
    
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return (colorDictKey.count)
    }
    
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "cell")
        
        cell.textLabel?.text = colorDictKey[indexPath.row]
        cell.contentView.backgroundColor = colorDict[colorDictKey[indexPath.row]]
        return cell
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
