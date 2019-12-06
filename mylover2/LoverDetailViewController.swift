//
//  LoverDetailViewController.swift
//  mylover2
//
//  Created by Yvonne on 2019/11/27.
//  Copyright © 2019 Yvonne. All rights reserved.
//

import UIKit

class LoverDetailViewController: UIViewController {
    

    let lover : MyLover
  //  let man : MyLover
    
 //   let man : MyLover
    
    init?(coder:NSCoder,lover:MyLover){
        self.lover = lover
      //  self.man = man
        
        super.init(coder:coder)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    
    @IBOutlet weak var imageView: UIImageView!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    
    imageView.image = UIImage(named: lover.imageName)
        
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
