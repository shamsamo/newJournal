//
//  ViewController.swift
//  newJournal
//
//  Created by Shamsa Mohamed on 4/5/22.
//

import UIKit

class ViewController: UIViewController {

 
    @IBOutlet weak var enterJ: UIButton!
    @IBOutlet weak var labelOne: UILabel!
    @IBOutlet weak var numThree: UILabel!
    @IBOutlet weak var numTwo: UILabel!
    @IBOutlet weak var numOne: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        enterJ.isHidden = true
    }

    let myComboOne = 1
    let myComboTwo = 2
    let myComboThree = 3
    
    var setComboOne = 0
    var setCombotwo = 0
    var setCombothree = 0
    
    @IBAction func arrowUpOne(_ sender: UIButton) {
        setComboOne += 1
        numOne.text = "\(setComboOne)"
    }
    @IBAction func arrowUpTwo(_ sender: UIButton) {
        setCombotwo += 1
        numTwo.text = "\(setCombotwo)"
    }
    @IBAction func arrowUpThree(_ sender: UIButton) {
        setCombothree += 1
        numThree.text = "\(setCombothree)"
    }
    @IBAction func arrowDownOne(_ sender: UIButton) {
        setComboOne -= 1
        numOne.text = "\(setComboOne)"
    }
    @IBAction func arrowDownTwo(_ sender: UIButton) {
        setCombotwo -= 1
        numTwo.text = "\(setCombotwo)"
    
    }
    @IBAction func arrowDownThree(_ sender: UIButton) {
        setCombothree -= 1
        numThree.text = "\(setCombothree)"

    }
    @IBAction func lockBtnOutlet(_ sender: UIButton) {
        setComboOne = 0
        setCombotwo = 0
        setCombothree = 0
        numOne.text = "0"
        numTwo.text = "0"
        numThree.text = "0"
        labelOne.text = "locked"
        enterJ.isHidden = true

//        tnOutlet.titleLabel?.font =  UIFont(name:CrayonHandRegular2016Demo 2.ttf, size: 20)

    }
    
    @IBAction func unlockButton(_ sender: UIButton) {
        print(myComboOne)
        print(setComboOne)
        print(myComboTwo)
        print(setCombotwo)
        print(myComboThree)
        print(setCombothree)
        if myComboOne == setComboOne && myComboTwo == setCombotwo && myComboThree == setCombothree{
            labelOne.text = "congrats "
            enterJ.isHidden = false
            
        }
        }
    
    
    @IBAction func enterJ(_ sender: UIButton) {
       
    }
    

}

