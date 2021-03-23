//
//  ViewController.swift
//  Football
//
//  Created by Admin on 3/24/21.
//

import UIKit

class ViewController: UIViewController {
    
    private var imageView = UIImageView()
    private var label = UILabel()
    private var button = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: "4")
        imageView.contentMode = .scaleToFill
        imageView.resignFirstResponder()
        view.addSubview(imageView)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = ""
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 25)
        label.numberOfLines = 2
        label.sizeToFit()
        view.addSubview(label)
        
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("Choose a Team", for: .normal)
        button.tintColor = .gray
        button.backgroundColor = #colorLiteral(red: 0.3991420865, green: 0.6223136783, blue: 0.5865657926, alpha: 1)
        button.layer.cornerRadius = 7
        button.addTarget(self, action: #selector(didTappedButton), for: .touchUpInside)
        view.addSubview(button)
        
        constraints()
    }

    @objc func didTappedButton() {
        let vc = SecondScreen()
        self.present(vc, animated: true, completion: nil)
        vc.delegate = self
    }
    
    func constraints() {
        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 90),
            imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            imageView.widthAnchor.constraint(equalToConstant: 250),
            imageView.heightAnchor.constraint(equalToConstant: 250)
        ])
        
        NSLayoutConstraint.activate([
            label.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 70),
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label.widthAnchor.constraint(equalToConstant: 250),
            label.heightAnchor.constraint(equalToConstant: 100)
        ])
        
        NSLayoutConstraint.activate([
            button.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 70),
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.widthAnchor.constraint(equalToConstant: 250),
            button.heightAnchor.constraint(equalToConstant: 70)
        ])
    }
}

extension ViewController: SideSelectionDelegate {
    func changeView(image: UIImage, name: String, color: UIColor) {
        imageView.image = image
        label.text = name
        view.backgroundColor = color
    }
}
