//
//  MainController.swift
//  TableViewTutorial
//
//  Created by Ацамаз Бицоев on 13.10.2020.
//

import UIKit


final class MainController: UIViewController {
    
    //MARK: Наша вьюшка
    private var mainView: MainView!
    
    
    //MARK: Стандартная функция UIViewController'а
    override func loadView() {
        super.loadView()
        mainView = MainView(controller: self)
        view = mainView //Меняем стандартный View на MainView (наш)
        mainView.configureView() //Вызываем нашу функцию
    }
    
    
}
