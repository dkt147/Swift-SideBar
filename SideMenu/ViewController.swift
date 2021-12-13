//
//  ViewController.swift
//  SideMenu
//
//  Created by JOEYCO-0072PK on 13/12/2021.
//

import UIKit

class ViewController: UIViewController {
    
    var label1: UILabel!
    var label2: UILabel!
    var label3: UILabel!
    var label4: UILabel!
    var label5: UILabel!
    var isSlide = false
    lazy var slideInMenuPadding : CGFloat = self.view.frame.width*0.30
    lazy var menuBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "sidebar.leading")?.withRenderingMode(.alwaysOriginal), style:.done, target: self, action: #selector(menuBarButtonItemTapped))
    
    @objc
    func menuBarButtonItemTapped()
    {
        UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.8, initialSpringVelocity: 0, options: .curveEaseOut){
            self.containerView.frame.origin.x = self.isSlide ? 0 : self.containerView.frame.width - self.slideInMenuPadding
        } completion: {(finished) in
            
            print("Animation finish")
            self.isSlide.toggle()
        }
    }
    
    lazy var menuView: UIView = {
        let view = UIView()
        view.backgroundColor = .systemGray5
        label1 = UILabel(frame: CGRect(x: 50, y: 100, width: 220, height: 50))
        label1.text = "Home";
        view.addSubview(label1)
        
        label2 = UILabel(frame: CGRect(x: 50, y: 130, width: 220, height: 50))
        label2.text = "About";
        view.addSubview(label2)
        
        label3 = UILabel(frame: CGRect(x: 50, y: 160, width: 220, height: 50))
        label3.text = "Services";
        view.addSubview(label3)
        
        label4 = UILabel(frame: CGRect(x: 50, y: 190, width: 220, height: 50))
        label4.text = "Users";
        view.addSubview(label4)
        
        label5 = UILabel(frame: CGRect(x: 50, y: 220, width: 220, height: 50))
        label5.text = "Logout";
        view.addSubview(label5)
        
        return view
    }()
    
    lazy var containerView: UIView = {
        let view = UIView()
        view.backgroundColor = .systemBackground
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        view.backgroundColor = .systemBackground
        title = "Side Menu"
        navigationItem.setLeftBarButton(menuBarButtonItem, animated: false)
        
        menuView.pinMenuTo(view, with: slideInMenuPadding)
        containerView.edgeTo(view)
        
    }

    
  

}


public extension UIView{
    func edgeTo(_ view: UIView)
    {
        view.addSubview(self)
        translatesAutoresizingMaskIntoConstraints = false
        topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        
    }
    
    func pinMenuTo(_ view: UIView, with constant: CGFloat)
    {
        view.addSubview(self)
        translatesAutoresizingMaskIntoConstraints = false
        topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -constant).isActive = true
        bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        
    }
}
