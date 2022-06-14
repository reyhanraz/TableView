//
//  ViewController.swift
//  TableView
//
//  Created by Reyhan Rifqi on 14/06/22.
//

import UIKit

class ViewController: UITableViewController {
    private let _cellIdentifier = "cell"
    private var _items = [CellModel]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: _cellIdentifier)
        binding()
    }
    
    private func binding(){
        let viewModel = TableViewModel()
        _items = viewModel.fetchItem(numberOfRows: 10)
        tableView.reloadData()
    }
}

extension ViewController{
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: _cellIdentifier, for: indexPath)
        var config = cell.defaultContentConfiguration()
        let model = _items[indexPath.row]
        config.text = model.title
        config.image = model.image
        cell.contentConfiguration = config
        return cell
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        _items.count
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = DetailViewController(model: _items[indexPath.row])
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
}

