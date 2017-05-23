//
//  ViewController.swift
//  Collection_and_UItableview_Demo
//
//  Created by Suraj Sonawane on 22/05/17.
//  Copyright © 2017 com.demo. All rights reserved.
//

import UIKit

class mainCollectionViewCell : UICollectionViewCell{
    
    @IBOutlet weak var backView: UIView!
}



class mainTableViewCell : UITableViewCell,UICollectionViewDelegate,UICollectionViewDataSource{
    
    @IBOutlet weak var mainCollectionView: UICollectionView!
    
    override func awakeFromNib() {
        mainCollectionView.delegate = self
        mainCollectionView.dataSource = self
        
    }
    
    
    
//TODO: - UICollectionViewDatasource method implementation
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int{
        return 50
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell{
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CellID", for: indexPath) as! mainCollectionViewCell
        cell.backView.backgroundColor = UIColor.red
        return cell
    }
}


class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    
//TODO: - General
    
    
//TODO: - Controls
    
    @IBOutlet weak var tblMain: UITableView!
    
//TODO: - Let's Code
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
//TODO: - UITableViewDatasource Method implementation
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
            return 10
    }
    
    
  
  
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let cell = tableView.dequeueReusableCell(withIdentifier: "CellID", for: indexPath) as! mainTableViewCell
        cell.selectionStyle = .none
        
        return cell
    }
    

}

