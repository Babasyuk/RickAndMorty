//
//  HeroCardViewController.swift
//  RickAndMorty
//
//  Created by Артём on 12.10.2022.
//

import UIKit

final class HeroCardViewController: UIViewController {
    
    var heroesCards: Hero!
    
    //MARK: - @IBOutlets
    @IBOutlet var iconName: UIImageView! {
        didSet {
            iconName.layer.cornerRadius = iconName.frame.height / 2
        }
    }
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var statusLabel: UILabel!
    @IBOutlet var speciesLabel: UILabel!
    @IBOutlet var genderLabel: UILabel!
    @IBOutlet var originLabel: UILabel!
    @IBOutlet var backButton: UIButton!
    
    //MARK: - viewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = heroesCards.title
        iconName.image = UIImage(named: heroesCards.imageName)
        nameLabel.text = heroesCards.title
        statusLabel.text = heroesCards.status
        speciesLabel.text = heroesCards.species
        genderLabel.text = heroesCards.gender
        originLabel.text = heroesCards.origin
    }
    
    // MARK: - @IBActions
    @IBAction func backButtonPressed() {
        dismiss(animated: true)
    }
    
    deinit {
        print("2 экран выгружен из памяти")
    }
}
