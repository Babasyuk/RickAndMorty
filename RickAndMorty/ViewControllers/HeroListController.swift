//
//  HeroListController.swift
//  RickAndMorty
//
//  Created by Артём on 26.08.2022.
//

import UIKit

final class HeroListController: UITableViewController {
    
    private var heroesAll = Hero.getHeroesList()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 95
        navigationItem.leftBarButtonItem = editButtonItem
    }

    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let heroCardVC = segue.destination as? HeroCardViewController else { return }
        heroCardVC.heroesCards = sender as? Hero
        //heroCardVC.heroesCards = heroesAll
    }
    
    // MARK: - UITableViewDataSource
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return heroesAll.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "heroCell", for: indexPath) as! CustomTableViewCell
        let hero = heroesAll[indexPath.row]
        cell.label.text = hero.title
        cell.iconImageView.image = UIImage(named: hero.imageName)
        cell.iconImageView.layer.cornerRadius = cell.iconImageView.frame.height / 2
//        var content = cell.defaultContentConfiguration()
//        content.text = hero.title
//        content.image = UIImage(named: hero.imageName)
//        content.imageProperties.cornerRadius = tableView.rowHeight / 2
//        cell.contentConfiguration = content
        return cell
    }
    
    // MARK: - UITableViewDelegate
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let hero = heroesAll[indexPath.row]
        performSegue(withIdentifier: "showHeroCard", sender: hero)
    }
    
    override func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        .none
    }
    
    override func tableView(_ tableView: UITableView, shouldIndentWhileEditingRowAt indexPath: IndexPath) -> Bool {
        false
    }
    
    override func tableView(_ tableView: UITableView, moveRowAt sourceIndexPath: IndexPath, to destinationIndexPath: IndexPath) {
        let currentHero = heroesAll.remove(at: sourceIndexPath.row)
        heroesAll.insert(currentHero, at: destinationIndexPath.row)
    }

    override func tableView(_ tableView: UITableView, leadingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let actionDelete = UIContextualAction(style: .destructive, title: "Удалить") { _,_,_ in
            // удаляем контакт
            self.heroesAll.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .automatic)
            
            // заново формируем табличное представление
            tableView.reloadData()
        }
        // формируем экземпляр, описывающий доступные действия
        let actions = UISwipeActionsConfiguration(actions: [actionDelete])
        return actions
    }
}
