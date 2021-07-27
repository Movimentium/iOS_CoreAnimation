//
//  MainVC.swift
//  iOS_CoreAnimation
//
//  Created by Miguel on 27/07/2021.
//

import UIKit

class MainVC: UIViewController, UITableViewDataSource, UITableViewDelegate {


    @IBOutlet weak var table: UITableView!
    let arrVCs = ["FireWorksVC"]

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    
    func setupUI() {
        table.rowHeight = 60
        table.dataSource = self
        table.delegate = self
    }

    // MARK: - UITableViewDataSource
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrVCs.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let strVC = arrVCs[indexPath.row]
        let cell = table.dequeueReusableCell(withIdentifier: "idCell", for: indexPath)
        cell.textLabel?.text = strVC
        return cell
    }
    
    // MARK: - UITableViewDelegate
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        table.deselectRow(at: indexPath, animated: true)
        let strVC = arrVCs[indexPath.row]
        performSegue(withIdentifier: "to" + strVC, sender: nil)
    }
    
}
