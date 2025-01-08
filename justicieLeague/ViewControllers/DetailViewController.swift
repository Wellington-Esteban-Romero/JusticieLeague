//
//  DetailViewController.swift
//  justicieLeague
//
//  Created by Tardes on 8/1/25.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var avatarImageView: UIImageView!
    
    var superhero: SuperheroItem!

    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = superhero.name
        avatarImageView.loadFrom(url: superhero.image.url)
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
