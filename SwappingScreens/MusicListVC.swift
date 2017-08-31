//
//  MusicListVC.swift
//  SwappingScreens
//
//  Created by Ariven on 31/08/17.
//  Copyright © 2017 Ariven. All rights reserved.
//

import UIKit

class MusicListVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        view.backgroundColor = #colorLiteral(red: 0.7254902124, green: 0.4784313738, blue: 0.09803921729, alpha: 1)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func backBtnPressed(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)
    }

    @IBAction func load3rdScreenPressed(_ sender: Any) {
        
        let songTitle = "Whispers of The Mind"
        performSegue(withIdentifier: "PlaySongVC", sender: songTitle)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if let destination = segue.destination as? PlaySongVC{
        
            if let song = sender as? String{
            
                destination.selectedSong = song
            }
            
        }
    }

}
