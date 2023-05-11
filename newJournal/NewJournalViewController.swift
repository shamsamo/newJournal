//
//  NewJournalViewController.swift
//  newJournal
//
//  Created by Shamsa Mohamed on 4/5/22.
//

import UIKit
//var allDays: [JournalEntry] = []
class NewJournalViewController: UIViewController {
    @IBOutlet weak var titleFeild: UITextField!
   
    @IBOutlet weak var textFeidl: UITextField!
    @IBOutlet weak var dateFeild: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    @IBAction func saveButton(_ sender: UIButton) {
        let newDay = JournalEntry(mainText: "\(textFeidl.text ?? "")", date: "\(dateFeild.text ?? "")", title: "\(titleFeild.text ?? "") ", mood: "")
          allJournal.append(newDay)
        
    }
    
}
