//
//  ViewController.swift
//  UITableView_Section_Dynamic_Swift4
//
//  Created by DeEp KapaDia on 22/05/18.
//  Copyright © 2018 DeEp KapaDia. All rights reserved.
//

import UIKit

struct objects {
    
    var type: String
    var Titles: [String]
    
}

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource{

    var tabelview = UITableView()
    
    var obj = [objects]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        tabelview.frame = self.view.frame
        self.view.addSubview(tabelview)
        
        tabelview.delegate = self
        tabelview.dataSource = self
        
        let Deep = objects(type: "Deep Kapadia", Titles: ["IOS Developer","UI Designer"])
        let ParthB = objects(type: "Parth Goswami", Titles: ["IOS Developer","Web Designer"])
        let ParthR = objects(type: "Parth Rashiwala", Titles: ["Singer","Composer","Live Artist"])
        let Manan = objects(type: "Manan Jadia", Titles: ["Photographer"])
        
        obj.append(Deep)
        obj.append(ParthB)
        obj.append(ParthR)
        obj.append(Manan)
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return obj.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return obj[section].Titles.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell(style: .default, reuseIdentifier: nil)
        
        cell.textLabel?.text = obj[indexPath.section].Titles[indexPath.row]
        return cell
        
    }
    
    //Header
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 30
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return obj[section].type
    }
    
    //footer
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 3
    }


}

