//
//  ViewControllerAdd.swift
//  Signature App
//
//  Created by Razan on 28/03/1443 AH.
//

import UIKit

class ViewControllerAdd: UIViewController, UITableViewDelegate, UITableViewDataSource {
 
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = WalletTableView.dequeueReusableCell(withIdentifier: "cardCellID") as! TableViewCellCard
        cell.cardNameCell.text = save.wallet[indexPath.row].CardName
        cell.CarNumCell.text = save.wallet[indexPath.row].cardNumber
        cell.Datecell.text = save.wallet[indexPath.row].ExpDate
        return cell
        
    }
     
    var save = Signture()
    var selectedCard : Int!
    @IBOutlet weak var cardName: UITextField!
    @IBOutlet weak var CardNumber: UITextField!
    @IBOutlet weak var expDate: UITextField!
    
    @IBAction func AddButtom(_ sender: Any) {
        save.wallet.append(Payment(cardNumber: CardNumber.text!, CardName: cardName.text!, ExpDate: expDate.text!))
        //self.navigationController?.popViewController(animated: true)
        WalletTableView.reloadData()
        
    }

    @IBOutlet weak var WalletTableView: UITableView!
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if(segue.identifier == "AddCard") {
//            let Card = segue.destination as! ViewControllerAdd
//            return Card
//        }
//
//    }
    override func viewDidLoad() {
        super.viewDidLoad()
        WalletTableView.register(UINib(nibName: "TableViewCellCard", bundle: nil), forCellReuseIdentifier: "cardCellID")
        WalletTableView.delegate = self
        WalletTableView.dataSource = self
                                 
        
        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
           WalletTableView.reloadData()
       }
    
    @IBAction func EditButtom(_ sender: Any) {
        WalletTableView.isEditing = true
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return save.wallet.count
     }
    func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        save.wallet.swapAt(sourceIndexPath.row, destinationIndexPath.row)
    }

//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//
//        selectedCard = indexPath.row
//        performSegue(withIdentifier: "ShowID", sender: self)
//
//        // Create object for the view controller you wish to show
//        // show it using navigation view controller
//
//    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
