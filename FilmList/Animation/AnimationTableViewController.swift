//
//  AnimationTableViewController.swift
//  FilmList
//
//  Created by Иван Маришин on 18.06.2021.
//

import UIKit

class AnimationTableViewController: UITableViewController {
    let networkService = NetworkService()
    var animation: Results? = nil

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let urlString = "https://itunes.apple.com/search?term=Animation+Kids&limit=25"
        networkService.request(urlString: urlString) { [weak self] (result) in
            switch result {
            case .success(let results):
                results.results.map { (films) in
                    self?.animation = results
                    self?.tableView.reloadData()
                }
            case .failure(let error):
                print(error)
            }
        }
        
        
        tableView.rowHeight = 70
    }
    
    

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return animation?.results.count ?? 0
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        var content = cell.defaultContentConfiguration()
        let film = animation?.results[indexPath.row]
        let imageURL = URL(string: (film?.artworkUrl100)!)
        
        content.text = film?.trackName
        content.secondaryText = film?.shortDescription
        
        if let dataIMG = try? Data(contentsOf: imageURL!) {
            content.image = UIImage(data: dataIMG)
        }
        
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
