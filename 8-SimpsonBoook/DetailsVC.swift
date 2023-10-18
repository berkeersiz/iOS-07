//
//  DetailsVC.swift
//  8-SimpsonBoook
//
//  Created by Berke Ersiz on 21.08.2023.
//

import UIKit

class DetailsVC: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var jobLabel: UILabel!
    
    var selectedSimpson : Simpsons?// Has no init hatası vermemesi için !!!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //Ustte opsiyonal yaptigimiz icin.
        nameLabel.text = selectedSimpson?.name
        jobLabel.text = selectedSimpson?.job
        imageView.image = selectedSimpson?.image
    }
    

   

}
