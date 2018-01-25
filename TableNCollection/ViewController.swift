//
//  ViewController.swift
//  TableNCollection
//
//  Created by Im100ruv on 25/01/18.
//  Copyright © 2018 Im100ruv. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UICollectionViewDelegate, UICollectionViewDataSource {

    @IBOutlet weak var ATableView: UITableView!
    @IBOutlet weak var ACollectionView: UICollectionView!
    
    let animals = ["dog", "cat", "horse", "dog", "cat", "horse", "dog", "cat", "horse", "dog", "cat", "horse"]
    //var selectedAnimals = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        ATableView.delegate = self
        ATableView.dataSource = self
        ACollectionView.delegate = self
        ACollectionView.dataSource = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return animals.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = ATableView.dequeueReusableCell(withIdentifier: "TVCell", for: indexPath) as! AnimalTVCell
        
        cell.ATableCellView.layer.cornerRadius = cell.ATableCellView.frame.height / 2
        cell.ATImage.layer.cornerRadius = cell.ATImage.frame.height / 2
        
        cell.ATImage.image = UIImage(named: animals[indexPath.row])
        cell.ATLabel.text = animals[indexPath.row].capitalized
        
        return cell
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return animals.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = ACollectionView.dequeueReusableCell(withReuseIdentifier: "CVCell", for: indexPath) as! ACVCell
        
        cell.cvImage.layer.cornerRadius = cell.cvImage.frame.height / 2
        cell.cvImage.image = UIImage(named: animals[indexPath.row])
        
        return cell
    }


}

