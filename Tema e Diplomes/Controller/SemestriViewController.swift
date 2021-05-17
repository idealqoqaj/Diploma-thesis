//
//  SemestriViewController.swift
//  Tema e Diplomes
//
//  Created by Ideal Cocaj on 7.4.21.
//

import UIKit


class SemestriViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    var model: HomeModel?
    
    @IBOutlet weak var tableView: UITableView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
        
    }
    
    @IBAction func didPressedBackButton(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
        
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return model?.elementet.count ?? 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "semestriCell") as! SemestriCell
        
        
        cell.cellView.layer.cornerRadius = cell.cellView.frame.height / 2
        cell.subjectLabel.text = model!.elementet[indexPath.row].homeTitle
        cell.subjectImage.image = UIImage(named: model!.elementet[indexPath.row].homeImage)
        cell.subjectImage.layer.cornerRadius = cell.cellView.frame.height / 2
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        if let url = URL(string: model!.elementet[indexPath.row].url) {
            UIApplication.shared.open(url)
        }
    }
    
    
}
