//
//  MainView.swift
//  TableViewTutorial
//
//  Created by Ацамаз Бицоев on 13.10.2020.
//

import UIKit


final class MainView: UIView {
    
    private var controller: MainController
    
    
    init(controller: MainController) {
        self.controller = controller
        super.init(frame: .zero)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func configureView() {
        backgroundColor = .white
    }
    
    
}
