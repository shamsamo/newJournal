//
//  AllJournalsViewController.swift
//  newJournal
//
//  Created by Shamsa Mohamed on 4/5/22.
//

import UIKit
var allJournal: [JournalEntry] = []
var selectedJournal = JournalEntry(mainText: "", date: "", title: "", mood: "")
class AllJournalsViewController: UIViewController, UITableViewDataSource,UITableViewDelegate {
    var aa = ["1","2","3"]
    var allDays: [JournalEntry] = []
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad()
{
        
        super.viewDidLoad()
        allJournal.append(testOne)
    
    }
    override func viewDidAppear(_ animated: Bool) {
//        animated = true
        tableView.reloadData()
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return allJournal.count
        
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell  = tableView.dequeueReusableCell(withIdentifier:"cellId", for: indexPath)
        cell.textLabel?.text = allJournal[indexPath.row].title
        return cell
 
   
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // we are going to take whatever you selected and assign it to a variable, intresting so yes.
        selectedJournal = allJournal[indexPath.row]
    }

    @IBAction func newButton(_ sender: UIBarButtonItem) {
      let newDay = JournalEntry(mainText: "", date: "", title: "", mood: "")
        allDays.append(newDay)
        
        
    }
    
}
