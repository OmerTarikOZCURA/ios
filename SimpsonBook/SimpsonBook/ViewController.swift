//
//  ViewController.swift
//  SimpsonBook
//
//  Created by Ömer Tarık Özcura on 2.01.2023.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {


    @IBOutlet weak var tableView: UITableView!
    
    var simpsonArray = [Simpson]()
    var chosenSimpson : Simpson?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.dataSource = self
        tableView.delegate = self
        
        let homer = Simpson(name: "Homer Simpson",job:"Nuclear Safety", image:UIImage(named: "homer")! )
        let marge = Simpson(name: "Marge Simpson",job:"Housewife", image:UIImage(named: "marge")! )
        let bart = Simpson(name: "Bart Simpson",job:"Student", image:UIImage(named: "bart")! )
        let lisa = Simpson(name: "Lisa Simpson",job:"Student", image:UIImage(named: "lisa")! )

        simpsonArray.append(homer)
        simpsonArray.append(marge)
        simpsonArray.append(bart)
        simpsonArray.append(lisa)
        
    }


    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return simpsonArray.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = simpsonArray[indexPath.row].name
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        chosenSimpson = simpsonArray[indexPath.row]
        self.performSegue(withIdentifier: "toDetailsVC", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC"{
            let destinationVC = segue.destination as! detailsVC
            destinationVC.selectedSimpson = chosenSimpson
        }
            
    }
    
}

