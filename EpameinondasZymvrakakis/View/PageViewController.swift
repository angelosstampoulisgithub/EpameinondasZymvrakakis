//
//  PageViewController.swift
//  EpameinondasZymvrakakis
//
//  Created by Angelos Staboulis on 10/1/25.
//

import UIKit
class PageViewController:UIPageViewController,UIPageViewControllerDataSource {
    var index:Int=0
    override func viewDidLoad() {
        super.viewDidLoad()
        let startingViewController:ViewController = indexViewController(index: 0) as! ViewController
        let viewControllers = [startingViewController]
        self.setViewControllers(viewControllers, direction: NavigationDirection.forward, animated: true, completion: nil)
        self.dataSource = self
        // Do any additional setup after loading the view.
    }
    func indexViewController(index:Int) -> UIViewController{
        let pageContentViewController = ViewController()
        pageContentViewController.pageIndex = index
        return pageContentViewController;
    }
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        if (index < 5){
            index = index + 1

        }else{
            index = 0
        }
        return  indexViewController(index: index)
    }
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        if (index == 0){
            index = 5
        }else{
            index = index - 1
        }
        return  indexViewController(index: index)
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
