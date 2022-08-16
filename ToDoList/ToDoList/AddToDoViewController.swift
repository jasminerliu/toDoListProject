//
//  AddToDoViewController.swift
//  ToDoList
//
//  Created by scholar on 8/15/22.
//

import UIKit

class AddToDoViewController: UIViewController
{

    var previousToDoTVC = ToDoTableViewController()
    
    @IBOutlet weak var descriptionTxtField: UITextField!
    
    @IBOutlet weak var switchInput: UISwitch!
    
    @IBAction func addToDo(_ sender: UIButton)
    {
        let newToDo = ToDoClass()
        
        if let checkForInput = descriptionTxtField.text
        {
            newToDo.description = checkForInput
            newToDo.important = switchInput.isOn
        }
        
        previousToDoTVC.listOfToDo.append(newToDo)
        previousToDoTVC.tableView.reloadData()
        navigationController?.popViewController(animated: true)
    }
    override func viewDidLoad()
    {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
