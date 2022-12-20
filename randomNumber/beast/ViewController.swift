//
//  ViewController.swift
//  beast
//
//  Created by Abdullah on 20/05/1444 AH.
//

import UIKit

class ViewController: UIViewController {

    var age:[String] = []
    
    
    
    var tasks = ["something cool", "something verry cool", "something extremely cool","Abdullah","Wael","Awwad","Kevin"]
    
    
    
    
    
    
    
    @IBOutlet weak var taskTextField: UITextField!
    
    @IBOutlet weak var textF: UITextView!
    @IBOutlet weak var tableView: UITableView!
    
    @IBAction func beastButton(_ sender: UIButton) {
        
//        if let userData = taskTextField.text {
//            tasks.append(userData)
//            let indexPath = IndexPath(row: tasks.count-1 , section: 0)
//
//          //  tableView.beginUpdates()
//            tableView.insertRows(at: [indexPath], with: .automatic)
//            tableView.reloadData()
//        }

        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.dataSource = self
        tableView.delegate = self
        
       // var randomNumber = Int.random(in: 0...100)
       // addAge.append(NameAndAge.init(name: "Abdullah", age: Int) )
        
        //put random number in the sub-title
        for _ in 5...95 {
            let randomNum = Int.random(in: 5...95)
            let toString = String(randomNum)
            age.append(toString)
        }
        
        
        
        
    }


}

extension ViewController :  UITableViewDataSource , UITableViewDelegate{
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tasks.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell1", for: indexPath)
        
        cell.textLabel?.text = tasks[indexPath.row]
        cell.detailTextLabel?.text = age[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
      //  print("Section: \(indexPath.section) and Row: \(indexPath.row)")
       // tasks.remove(at: indexPath.row)
     //   tableView.reloadData()
        
    }
    
    
    
}




