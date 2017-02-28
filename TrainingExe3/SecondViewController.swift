//
//  SecondViewController.swift
//  TrainingExe3
//
//  Created by Hung Nguyen on 2/28/17.
//  Copyright © 2017 Thanh Doi. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    //View
    var grayView: UIView!
    var blueView: UIView!
    var redView: UIView!
    
    //Label
    var textLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Second"
        
        //Main View
        view = UIView(frame: CGRect(x: 0, y: 0, width: 320, height: 568))
        view.backgroundColor = UIColor.white
        
        //Gray View
        grayView = UIView(frame: CGRect(x: 16, y: 28, width: 288, height: 128))
        grayView.backgroundColor = UIColor.lightGray
        view.addSubview(grayView)
        let grayTop = NSLayoutConstraint(item: grayView,
                                         attribute: .top,
                                         relatedBy: .equal,
                                         toItem: self.view,
                                         attribute: .top,
                                         multiplier: 1.0,
                                         constant: 75.0)
        
        let grayHeight = NSLayoutConstraint(item: grayView,
                                        attribute: .height,
                                        relatedBy: .equal,
                                        toItem: nil,
                                        attribute: .notAnAttribute,
                                        multiplier: 1.0,
                                        constant: 128.0)
        
        let grayLeading = NSLayoutConstraint(item: grayView,
                                         attribute: .leading,
                                         relatedBy: .equal,
                                         toItem: self.view,
                                         attribute: .leadingMargin,
                                         multiplier: 1.0,
                                         constant: 0.0)
        
        let grayTrailing = NSLayoutConstraint(item: grayView,
                                          attribute: .trailing,
                                          relatedBy: .equal,
                                          toItem: self.view,
                                          attribute: .trailingMargin,
                                          multiplier: 1.0,
                                          constant: 0.0)
        NSLayoutConstraint.activate([grayLeading, grayTrailing, grayTop, grayHeight])
        grayView.translatesAutoresizingMaskIntoConstraints = false
        
        //Blue View
        blueView = UIView(frame: CGRect(x: 230, y: grayView.frame.maxY+20, width: 80, height: 80))
        blueView.backgroundColor = UIColor.blue
        view.addSubview(blueView)
        
        let blueHeight = NSLayoutConstraint(item: blueView,
                                            attribute: .height,
                                            relatedBy: .equal,
                                            toItem: nil,
                                            attribute: .notAnAttribute,
                                            multiplier: 1.0,
                                            constant: 80.0)
        
        let blueWidth = NSLayoutConstraint(item: blueView,
                                            attribute: .width,
                                            relatedBy: .equal,
                                            toItem: nil,
                                            attribute: .notAnAttribute,
                                            multiplier: 1.0,
                                            constant: 80.0)
        
        let blueTrailing = NSLayoutConstraint(item: blueView,
                                              attribute: .trailing,
                                              relatedBy: .equal,
                                              toItem: self.view,
                                              attribute: .trailingMargin,
                                              multiplier: 1.0,
                                              constant: 0.0)
        
        let blueTop = NSLayoutConstraint(item: blueView,
                                         attribute: .top,
                                         relatedBy: .equal,
                                         toItem: grayView,
                                         attribute: .bottom,
                                         multiplier: 1.0,
                                         constant: 8.0)


        
        NSLayoutConstraint.activate([blueWidth, blueHeight, blueTrailing, blueTop])
        blueView.translatesAutoresizingMaskIntoConstraints = false
        
        //Red View
        redView = UIView(frame: CGRect(x: 125, y: 400, width: 70, height: 70))
        redView.backgroundColor = UIColor.red
        view.addSubview(redView)
        
        let redBottom = NSLayoutConstraint(item: redView,
                                         attribute: .bottom,
                                         relatedBy: .equal,
                                         toItem: self.view,
                                         attribute: .bottom,
                                         multiplier: 1.0,
                                         constant: -8.0)
        
        let redHeight = NSLayoutConstraint(item: redView,
                                            attribute: .height,
                                            relatedBy: .equal,
                                            toItem: nil,
                                            attribute: .notAnAttribute,
                                            multiplier: 1.0,
                                            constant: 70.0)
        
        let redWidth = NSLayoutConstraint(item: redView,
                                           attribute: .width,
                                           relatedBy: .equal,
                                           toItem: nil,
                                           attribute: .notAnAttribute,
                                           multiplier: 1.0,
                                           constant: 70.0)
        
        let redCenter = NSLayoutConstraint(item: redView,
                                                    attribute: .centerX,
                                                    relatedBy: .equal,
                                                    toItem: self.view,
                                                    attribute: .centerX,
                                                    multiplier: 1.0,
                                                    constant: 0.0)
        
        NSLayoutConstraint.activate([redBottom, redWidth, redHeight,redCenter])
        redView.translatesAutoresizingMaskIntoConstraints = false

        
        
        //Label
        textLabel = UILabel(frame: CGRect(x: 10, y: grayView.frame.maxY+20, width: 200, height: 80))
        textLabel.text = "I have some longer text here that I want to wrap onto multiple lines."
        textLabel.numberOfLines = 3
        view.addSubview(textLabel)
        
        let labelLeading = NSLayoutConstraint(item: textLabel,
                                             attribute: .leading,
                                             relatedBy: .equal,
                                             toItem: self.view,
                                             attribute: .leadingMargin,
                                             multiplier: 1.0,
                                             constant: 0.0)
        
        let labelTop = NSLayoutConstraint(item: textLabel,
                                         attribute: .top,
                                         relatedBy: .equal,
                                         toItem: grayView,
                                         attribute: .bottom,
                                         multiplier: 1.0,
                                         constant: 8.0)
        
        let labelTrailing = NSLayoutConstraint(item: textLabel,
                                              attribute: .trailing,
                                              relatedBy: .equal,
                                              toItem: blueView,
                                              attribute: .leading,
                                              multiplier: 1.0,
                                              constant: -8.0)
        
        NSLayoutConstraint.activate([labelLeading, labelTop, labelTrailing])
        textLabel.translatesAutoresizingMaskIntoConstraints = false

        
        
        // Do any additional setup after loading the view.
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
