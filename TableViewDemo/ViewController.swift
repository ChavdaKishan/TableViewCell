//
//  ViewController.swift
//  TableViewDemo
//
//  Created by iFlame on 7/17/17.
//  Copyright © 2017 iFlame. All rights reserved.
//

import UIKit

struct mydata {
    
    let cell : Int!
    let title : String!
    let subtitle : String!
    let image : UIImage!
 
}

class ViewController: UITableViewController {
    
        
    var array = [mydata]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        array = [mydata(cell: 1, title: "Sagar", subtitle: "Ios Developer", image: #imageLiteral(resourceName: "3")),
                 mydata(cell: 2, title: "Student", subtitle: "Iso Student", image: #imageLiteral(resourceName: "1"))]

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return array.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = Bundle.main.loadNibNamed("TableViewCell", owner: self, options: nil)?.first as! TableViewCell
        
        cell.titlelbl.text = array[indexPath.row].title
        cell.subtitlelbl.text = array[indexPath.row].subtitle
        cell.Image1.image = array[indexPath.row].image

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
