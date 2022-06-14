//
//  ViewModel.swift
//  TableView
//
//  Created by Reyhan Rifqi on 14/06/22.
//

import Foundation
import UIKit

struct TableViewModel{
    
    func fetchItem(numberOfRows: Int) -> [CellModel] {
        var items = [CellModel]()

        for _ in 0..<numberOfRows{
            items.append(CellModel(image: UIImage(systemName: "star.fill"), title: "Star"))
        }
        return items
    }
    
}
