//
//  HorrorTableViewController.swift
//  FilmList
//
//  Created by Иван Маришин on 18.06.2021.
//

import UIKit

class HorrorTableViewController: UITableViewController {
    
    private var horrors = Horror.getHorror()

    override func viewDidLoad() {
        super.viewDidLoad()
    
        tableView.backgroundColor = .systemTeal

    }

    // MARK: - Table view data source
    

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        horrors.count
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        130
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(
            withIdentifier: "cell",
            for: indexPath)
        
        let singleHorror = horrors[indexPath.row]

        cell.textLabel?.text = "\(singleHorror.name) (\(singleHorror.year))"
        cell.detailTextLabel?.text = "Director: \(singleHorror.author)"
        cell.imageView?.image = UIImage(named: singleHorror.image)
        
        cell.selectionStyle = .none
        cell.backgroundColor = .systemTeal
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(indexPath.row)
    }

}
