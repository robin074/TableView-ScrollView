//
//  showViewController.swift
//  dm18imageview
//
//  Created by Apple MacBook Pro on 1/27/20.
//  Copyright © 2020 Apple MacBook Pro. All rights reserved.
//

import UIKit

class showViewController: UIViewController {
    @IBOutlet weak var ageShow: UILabel!
    @IBOutlet weak var nameShow: UILabel!
    @IBOutlet weak var imageShow: UIImageView!
    
    var selectImage:UIImage?
    var selectName = ""
    var selectAge = ""
    
    
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()

        ageShow.text = selectAge
        nameShow.text = selectName
        imageShow.image = selectImage
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
