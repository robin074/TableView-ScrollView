//
//  ViewController.swift
//  dm18imageview
//
//  Created by Apple MacBook Pro on 1/27/20.
//  Copyright © 2020 Apple MacBook Pro. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    
    

    var imageArray = ["p1","p2","p3","p4","p5","p6","p7","p8","p9","p10"]
    var nameArray = ["Abdur Rob","Abdullah","Roj","Irfan","Bonny","Faisal","Rodro","Pinky","Masura","Rizvi","Robin"]
    var ageArray = ["20","30","26","25","23","22","21","34","25","37"]
    
    
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return imageArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! TableViewCell
        cell.cellImage.image = UIImage(named: imageArray[indexPath.row])
        cell.cellName.text = nameArray[indexPath.row]
        cell.cellAge.text = ageArray[indexPath.row]
        cell.accessoryType = .disclosureIndicator
        return cell
        
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "showViewController") as! showViewController
        vc.selectImage = UIImage(named: imageArray[indexPath.row])
        vc.selectName = nameArray[indexPath.row]
        vc.selectAge = ageArray[indexPath.row]
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 380
    }
}

