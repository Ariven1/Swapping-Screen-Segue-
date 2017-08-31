//
//  PlaySongVC.swift
//  SwappingScreens
//
//  Created by Ariven on 31/08/17.
//  Copyright © 2017 Ariven. All rights reserved.
//

import UIKit

class PlaySongVC: UIViewController {

    private var _selectedSong: String!
    
    @IBOutlet weak var songTitleLbl: UILabel!
    
    var selectedSong : String{
    
        get{
        
            return _selectedSong
        }
        set{
            
            _selectedSong = newValue
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        songTitleLbl.text = _selectedSong!
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
