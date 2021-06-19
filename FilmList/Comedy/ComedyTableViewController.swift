//
//  ComedyTableViewController.swift
//  FilmList
//
//  Created by Иван Маришин on 18.06.2021.
//

import UIKit

class ComedyTableViewController: UITableViewController {
    
    var comedies = Comedy.getComedies()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return comedies.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        cell.textLabel?.text = comedies[indexPath.row].title
        cell.imageView?.image = UIImage(named: comedies[indexPath.row].title)
        cell.detailTextLabel?.text = comedies[indexPath.row].subTitle
        
        return cell
    }
}
