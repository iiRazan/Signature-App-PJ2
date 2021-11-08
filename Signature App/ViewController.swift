//
//  ViewController.swift
//  Signature App
//
//  Created by Razan on 26/03/1443 AH.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
   
//    var juice1 = Juice(title: "Mango", description: "Sweet", calories: 234, Image: "أفوكادو")
//    var order1: Order! //= Order(item: juice1, qty: 20)
    var selectedCell : Int!
    var juiceName = Signture() //= Signture(products: juice1, orders: order1)

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
        let cell = tableView.dequeueReusableCell(withIdentifier: "JuiceCell") as! JuicesMenu
        cell.juicetype.text = juiceName.products[indexPath.row].title
        cell.juiceImage.image = UIImage(named: juiceName.products[indexPath.row].Image)
        return cell
    }
    

    @IBOutlet weak var juicesList: UITableView!
    
    @IBAction func DeleteAll(_ sender: Any) {
        juiceName.products.removeAll()
        juicesList.reloadData()
    }
    
    
    
    //    @IBAction func DeleteAll(_ sender: Any) {
//
//        juiceName.products.removeAll()
//        juicesList.reloadData()
        
//    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        juicesList.register(UINib(nibName: "JuicesMenu", bundle: nil), forCellReuseIdentifier: "JuiceCell")
        
        juicesList.delegate = self
        juicesList.dataSource = self
        juicesList.rowHeight = 130
        juiceName.products.append(Juice(title: "Signautre", description: "gggg", calories: 234, Image: "signature"))
        juiceName.products.append(Juice(title: "Avocado", description: "Avocado", calories: 234, Image: "أفوكادو"))
        juiceName.products.append(Juice(title: "WardBerry", description: "Ward", calories: 234, Image: "ورد"))
        juiceName.products.append(Juice(title: "Kiwi", description: "kiwi", calories: 234, Image: "كيوي"))
       
 
//        order1 = Order(item: juice1, qty: 20)
//        juiceName = Signture(products: juice1, orders: order1)
    }
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return juiceName.products.count
     }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath){
        if editingStyle == .delete {
            juiceName.products.remove(at:indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
//    var myShop : Signture = Signture()
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        print( myShop.products.count)
        // Do any additional setup after loading the view.

    
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return 4
//
//}
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        tableView.dequeueReusableCell(withIdentifier: "")
//
//        let cell = UITableViewCell(style: .default, reuseIdentifier: nil)
//        cell.textLabel?.text = "Starting"
//        return cell
//
//        //      let someButton = UIButton()

//        someButton.layer.cornerRadius = 6

//    }
//
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//
//        selectedCell = indexPath.row
//        performSegue(withIdentifier: "ShowID", sender: self)
//        
//        // Create object for the view controller you wish to show
//        // show it using navigation view controller
//
//    }
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if(segue.identifier == "AddCard") {
//            let Card = segue.destination as!
//        }
//        
//    }
   
}
