//
//  DriverViewController.swift
//  AutoLayout2
//
//  Created by Antonyo Chavez Saucedo on 3/29/19.
//  Copyright © 2019 Antonyo Chavez Saucedo. All rights reserved.
//

import UIKit

class DriverViewController: UIViewController, UIPageViewControllerDataSource {
    
    let namesImages = ["imagen1", "imagen2", "imagen3"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let pageController = self.storyboard?.instantiateViewController(withIdentifier: "pageVC") as? UIPageViewController, let startingViewController = viewControllerAtIndex(index: 0) else{
            return
        }
        
        let viewController = [startingViewController]
        pageController.setViewControllers(viewController, direction: .forward, animated: true, completion: nil)
        
        pageController.view.frame = view.bounds
        
        self.addChild(pageController)
        view.addSubview(pageController.view)
        
        pageController.dataSource = self
    }
    
    //MARK: PageController DataSource
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        
        guard let viewController = viewController as? ViewController else{
            return nil
        }
        var index = viewController.pageIndex
        index += 1
        
        if index >= namesImages.count{
            return nil
        }
        
        
        return viewControllerAtIndex(index: index)
        
    }

    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        guard let viewController = viewController as? ViewController else{
            return nil
        }
        var index = viewController.pageIndex
        index -= 1
        
        if index < 0{
            return nil
        }
        return viewControllerAtIndex(index: index)
    }
    
    func presentationCount(for pageViewController: UIPageViewController) -> Int {
        return namesImages.count
    }
    
    func presentationIndex(for pageViewController: UIPageViewController) -> Int {
        return 0
    }
    
    
    //MARK: Functions
    private func viewControllerAtIndex(index : Int) -> UIViewController?{
        if index >= namesImages.count{
            return nil
        }
        guard let pageController = storyboard?.instantiateViewController(withIdentifier: "mainVC") as? ViewController else{
            return nil
        }
        pageController.imageName = namesImages[index]
        pageController.pageIndex = index
        return pageController
    }
    
 

}
