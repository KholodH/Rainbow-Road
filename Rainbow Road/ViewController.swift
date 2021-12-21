//
//  ViewController.swift
//  Rainbow Road
//
//  Created by admin on 21/12/2021.
//

import UIKit

class ViewController: UIViewController , UITableViewDataSource {
    @IBOutlet weak var tableView: UITableView!
    let colors = [UIColor.red, UIColor.orange, UIColor.yellow ,UIColor.green , UIColor.blue, UIColor.purple]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.dataSource = self
    }

        func tableView(_ taskListTable: UITableView, numberOfRowsInSection section: Int) -> Int {
            return 6
        }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200.0;//Choose your custom row height
    }
        func tableView(_ taskListTable: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = taskListTable.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
            
            cell.contentView.backgroundColor = colors[indexPath.row]
            return cell
        }
}

