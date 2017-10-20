//
//  ColorViewController.swift
//  Colors
//
//  Created by Shannon, Leandre D. (MU-Student) on 10/19/17.
//  Copyright © 2017 Shannon, Leandre D. (MU-Student). All rights reserved.
//

import UIKit

class ColorViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var colorsTableView: UITableView!
    
    var colors = ["red",
                  "orange",
                  "yellow",
                  "green",
                  "blue",
                  "purple",
                  "brown"]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "colorCell", for: indexPath)
        
        cell.textLabel?.text = colors[indexPath.row]
        switch(colors[indexPath.row]) {
        case "red":
            cell.backgroundColor = UIColor.red
        case "orange":
            cell.backgroundColor = UIColor.orange
        case "yellow":
            cell.backgroundColor = UIColor.yellow
        case "green":
            cell.backgroundColor = UIColor.green
        case "blue":
            cell.backgroundColor = UIColor.blue
        case "purple":
            cell.backgroundColor = UIColor.purple
        case "brown":
            cell.backgroundColor = UIColor.brown
        case "black":
            cell.backgroundColor = UIColor.black
        case "magenta":
            cell.backgroundColor = UIColor.magenta
        case "gray":
            cell.backgroundColor = UIColor.gray
        case "cyan":
            cell.backgroundColor = UIColor.cyan
        default:
            cell.backgroundColor = UIColor.white
            
        }
        
        return cell
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
