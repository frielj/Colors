//
//  ColorController.swift
//  Colors
//
//  Created by Jeffrey Friel on 7/14/17.
//  Copyright © 2017 Jeffrey Friel. All rights reserved.
//

import UIKit

class ColorController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    //let colorDictKey = ["red", "orange", "yellow", "green", "blue", "purple", "brown"]
    
    var colorDict = [Color(name: "red", uiColor: UIColor.red),
                     Color(name: "orange", uiColor: UIColor.orange),
                     Color(name: "yellow", uiColor: UIColor.yellow),
                     Color(name: "green", uiColor: UIColor.green),
                     Color(name: "blue", uiColor: UIColor.blue),
                     Color(name: "purple", uiColor: UIColor.purple),
                     Color(name: "brown", uiColor: UIColor.brown)
                     ]
    
    
    
    @IBOutlet weak var colorsTableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Colors"
        // Do any additional setup after loading the view, typically from a nib.
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return (colorDict.count)
    }
    
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        cell.textLabel?.text = colorDict[indexPath.row].name
        cell.backgroundColor = colorDict[indexPath.row].uiColor
        cell.selectionStyle = .none
        return cell
    }
    

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? ColorDetailViewController,
           let row = colorsTableView.indexPathForSelectedRow?.row
        {
            destination.color = colorDict[row]
        }
    }
}
