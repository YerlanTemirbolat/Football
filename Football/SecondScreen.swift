//
//  SecondScreen.swift
//  Football
//
//  Created by Admin on 3/24/21.
//

import UIKit

protocol SideSelectionDelegate: class {
    func changeView(image: UIImage, name: String, color: UIColor)
}

class SecondScreen: UIViewController {
    
    weak var delegate: SideSelectionDelegate?
    
    private var label = UILabel()
    private var lazioButton = UIButton()
    private var cagliariButton = UIButton()
    private var interButton = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Choose your kit"
        label.font = UIFont.systemFont(ofSize: 25)
        label.textAlignment = .center
        label.textColor = #colorLiteral(red: 0.4703980684, green: 0.7596912384, blue: 0.7031006217, alpha: 1)
        label.numberOfLines = 2
        label.sizeToFit()
        view.addSubview(label)
        
        lazioButton.translatesAutoresizingMaskIntoConstraints = false
        lazioButton.setImage(UIImage(named: "8"), for: .normal)
        lazioButton.addTarget(self, action: #selector(didTappedLazioButton), for: .touchUpInside)
        view.addSubview(lazioButton)
        
        cagliariButton.translatesAutoresizingMaskIntoConstraints = false
        cagliariButton.setImage(UIImage(named: "7"), for: .normal)
        cagliariButton.addTarget(self, action: #selector(didTappedCagliariButton), for: .touchUpInside)
        view.addSubview(cagliariButton)
        
        interButton.translatesAutoresizingMaskIntoConstraints = false
        interButton.setImage(UIImage(named: "9"), for: .normal)
        interButton.addTarget(self, action: #selector(didTappedInterButton), for: .touchUpInside)
        view.addSubview(interButton)
        
        constraints()
    }

    @objc func didTappedLazioButton() {
        delegate?.changeView(image: UIImage(named: "1")!, name: "SSC Lazio", color: .cyan)
        dismiss(animated: true, completion: nil)
    }
    
    @objc func didTappedCagliariButton() {
        delegate?.changeView(image: UIImage(named: "2")!, name: "FC Cagliari", color: .purple)
        dismiss(animated: true, completion: nil)
    }
    
    @objc func didTappedInterButton() {
        delegate?.changeView(image: UIImage(named: "10")!, name: "FC Internazionale", color: .yellow)
        dismiss(animated: true, completion: nil)
    }
    
    func constraints() {
        NSLayoutConstraint.activate([
            label.topAnchor.constraint(equalTo: view.topAnchor, constant: 30),
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label.widthAnchor.constraint(equalToConstant: 300),
            label.heightAnchor.constraint(equalToConstant: 50)
        ])
        
        NSLayoutConstraint.activate([
            lazioButton.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 20),
            lazioButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            lazioButton.widthAnchor.constraint(equalToConstant: 150),
            lazioButton.heightAnchor.constraint(equalToConstant: 150)
        ])
        
        NSLayoutConstraint.activate([
            cagliariButton.topAnchor.constraint(equalTo: lazioButton.bottomAnchor, constant: 30),
            cagliariButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            cagliariButton.widthAnchor.constraint(equalToConstant: 150),
            cagliariButton.heightAnchor.constraint(equalToConstant: 150)
        ])
        
        NSLayoutConstraint.activate([
            interButton.topAnchor.constraint(equalTo: cagliariButton.bottomAnchor, constant: 30),
            interButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            interButton.widthAnchor.constraint(equalToConstant: 150),
            interButton.heightAnchor.constraint(equalToConstant: 150)
        ])
    }
}
