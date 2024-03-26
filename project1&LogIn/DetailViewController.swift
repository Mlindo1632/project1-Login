//
//  DetailViewController.swift
//  project1&LogIn
//
//  Created by Khumalo, Lindokuhle L on 2023/05/08.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet var ImageView: UIImageView!
    
    var selectedImage: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.largeTitleDisplayMode = .never
        
        title = selectedImage
        
        if let imageToLoad = selectedImage {
            ImageView.image = UIImage(named: imageToLoad)
            
             func viewWillAppear(_ animated: Bool) {
                super.viewWillAppear(animated)
                navigationController?.hidesBarsOnTap = true
            }
        }
        
        func viewWillDisappear (_ animated: Bool){
            super.viewWillDisappear(animated)
            navigationController?.hidesBarsOnTap = false
        }
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
