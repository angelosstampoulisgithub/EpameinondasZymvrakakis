//
//  ViewController.swift
//  EpameinondasZymvrakakis
//
//  Created by Angelos Staboulis on 10/1/25.
//

import UIKit

class ViewController: UIViewController {
         var mainImageView =  UIImageView()
         var imageArray:[UIImage] = []
         var pageIndex:Int!
         override func viewDidLoad() {
             super.viewDidLoad()
             if let varosi1 = UIImage(named: "zymvrakakis") {
                 imageArray.append(varosi1)
             }
             if let varosi2 = UIImage(named: "zymvrakakis1") {
                 imageArray.append(varosi2)
             }
             if let varosi3 = UIImage(named: "zymvrakakis2") {
                 imageArray.append(varosi3)
             }
             if let varosi4 = UIImage(named: "zymvrakakis3") {
                 imageArray.append(varosi4)
             }
             if let varosi5 = UIImage(named: "zymvrakakis4") {
                 imageArray.append(varosi5)
             }
             if let varosi6 = UIImage(named: "zymvrakakis5") {
                 imageArray.append(varosi6)
             }
           
             let width = UIScreen.main.bounds.width
             let height = UIScreen.main.bounds.height - 150
             mainImageView.frame = CGRect(x: 0, y: 0, width: width, height: height)
             mainImageView.image = imageArray[pageIndex]
             self.view.addSubview(mainImageView)
          
           
            
             // Do any additional setup after loading the view.
         }
         override func viewDidAppear(_ animated: Bool) {
             super.viewDidAppear(animated)
             if let varosi1 = UIImage(named: "zymvrakakis") {
                 imageArray.append(varosi1)
             }
             if let varosi2 = UIImage(named: "zymvrakakis1") {
                 imageArray.append(varosi2)
             }
             if let varosi3 = UIImage(named: "zymvrakakis2") {
                 imageArray.append(varosi3)
             }
             if let varosi4 = UIImage(named: "zymvrakakis3") {
                 imageArray.append(varosi4)
             }
             if let varosi5 = UIImage(named: "zymvrakakis4") {
                 imageArray.append(varosi5)
             }
             if let varosi6 = UIImage(named: "zymvrakakis5") {
                 imageArray.append(varosi6)
             }
           
             let width = UIScreen.main.bounds.width
             let height = UIScreen.main.bounds.height - 150
             mainImageView.frame = CGRect(x: 0, y: 0, width: width, height: height)
             mainImageView.image = imageArray[pageIndex]
             self.view.addSubview(mainImageView)
          
         }

}
