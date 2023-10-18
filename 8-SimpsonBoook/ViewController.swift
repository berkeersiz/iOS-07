//
//  ViewController.swift
//  8-SimpsonBoook
//
//  Created by Berke Ersiz on 21.08.2023.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    var mySimpson = [Simpsons]()
    
    var chosenSimpson : Simpsons?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
        //SimpsonObjects
        let homer = Simpsons(name: "Homer", job: "Nuclear Safety", image: UIImage(named: "homer")!)
        let marge = Simpsons(name: "Marge", job: "Housewife", image: UIImage(named: "marge")!)
        let bart = Simpsons(name: "Bart", job: "Student", image: UIImage(named: "bart")!)
        let lisa = Simpsons(name: "Lisa", job: "Student", image: UIImage(named: "lisa")!)
        let maggie = Simpsons(name: "Maggie", job: "Baby", image: UIImage(named: "maggie")!)
        
        mySimpson.append(homer)
        mySimpson.append(marge)
        mySimpson.append(bart)
        mySimpson.append(lisa)
        mySimpson.append(maggie)
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mySimpson.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        var content = cell.defaultContentConfiguration()
        content.text = mySimpson[indexPath.row].name // Hangi sıradaysa o gözükmesi için.
        cell.contentConfiguration = content
        return cell
        
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        chosenSimpson = mySimpson[indexPath.row]
        performSegue(withIdentifier: "toDetailsVC", sender: nil)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC" {
            let destinationVC = segue.destination as! DetailsVC
            
            destinationVC.selectedSimpson = chosenSimpson
        }
    }


}

