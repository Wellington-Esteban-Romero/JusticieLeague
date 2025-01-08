//
//  ViewController.swift
//  justicieLeague
//
//  Created by Tardes on 18/12/24.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UISearchBarDelegate {
    
    
    @IBOutlet weak var tableView: UITableView!
    
    var list: [SuperheroItem] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        
        let searchController = UISearchController(searchResultsController: nil)
        searchController.searchBar.delegate = self
        navigationItem.searchController = searchController
        
        finSuperheroBy(name: "a")
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return list.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! SuperheroViewCell
        cell.render(superhero: list[indexPath.item])
        return cell
    }
    
    func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        if let query = searchBar.text {
            finSuperheroBy(name: query)
        } else {
            finSuperheroBy(name: "a")
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let detailViewController =  segue.destination as! DetailViewController
        let indexPath = tableView.indexPathForSelectedRow!
        let superhero = list[indexPath.row]
        detailViewController.superhero = superhero
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    func finSuperheroBy(name: String) {
        Task {
            do {
                list =  try await SuperheroProvider.findSuperheroesBy(name: name)
                tableView.reloadData()
            } catch {
                print(error)
            }
        }
    }


}

