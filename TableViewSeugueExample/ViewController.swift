//
//  ViewController.swift
//  TableViewSeugueExample
//
//  Created by Daulet Ashikbayev on 16.02.2022.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var students = [
        Student.init("Miras Imangali", "3.4", UIImage.init(named: "female")!),
        Student.init("Bekbol Bolatov", "4.0", UIImage.init(named: "male")!)
    ]
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return students.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "bekazwerCell") as? CustomCell
        cell?.studentName.text = students[indexPath.row].name_surname
        cell?.studentGpa.text = students[indexPath.row].gpa
        cell?.studentImageView.image = students[indexPath.row].image
        
        return cell!
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detailVC = self.storyboard?.instantiateViewController(withIdentifier: "DetailViewController") as! DetailViewController
        navigationController?.pushViewController(detailVC, animated: true)
        myTableView.deselectRow(at: indexPath, animated: true)
    }
    
    @IBOutlet weak var myTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

