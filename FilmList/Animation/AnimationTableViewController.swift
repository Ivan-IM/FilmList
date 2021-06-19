//
//  AnimationTableViewController.swift
//  FilmList
//
//  Created by Иван Маришин on 18.06.2021.
//

import UIKit

class AnimationTableViewController: UITableViewController {
    
    let animation = Animation.getAnimation()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.rowHeight = 70
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return animation.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        var content = cell.defaultContentConfiguration()
        
        content.text = animation[indexPath.row].title
        content.secondaryText = animation[indexPath.row].description
        content.image = UIImage(named: animation[indexPath.row].image)
        
        cell.contentConfiguration = content
        
        return cell
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
