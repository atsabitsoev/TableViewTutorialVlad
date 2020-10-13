//
//  MainView.swift
//  TableViewTutorial
//
//  Created by Ацамаз Бицоев on 13.10.2020.
//

import UIKit


final class MainView: UIView {
    
    private var controller: MainController
    
    
    private let messageLabel = UILabel()
    private let changeTextButton = UIButton(type: .system) //Установили type "system" чтобы кнопка нажималась как системная
    
    
    //MARK: LIFE CYCLE
    init(controller: MainController) {
        self.controller = controller
        super.init(frame: .zero)
        setNeedsUpdateConstraints() //Чтобы констрейнты работали
    }
    
    //Хуйня
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //Стандартная функция, задающая констрейнты
    override func updateConstraints() {
        setMessageLabelConstraints()
        setChangeTextButtonConstraints()
        super.updateConstraints()
    }
    
    
    //MARK: Открытые функции
    //Функция, которая вызывается в контроллере
    func configureView() {
        backgroundColor = .white
        configureMessageLabel()
        configureChangeTextButton()
    }
    
    
    //MARK: СБОРКИ ЭЛЕМЕНТОВ
    //Функция для "сборки" messageLabel
    private func configureMessageLabel() {
        addSubview(messageLabel)
        messageLabel.translatesAutoresizingMaskIntoConstraints = false //Чтобы констрейнт работал
        messageLabel.text = "Геннадий"
    }
    
    //Функция для "сборки" changeTextButton
    private func configureChangeTextButton() {
        addSubview(changeTextButton)
        changeTextButton.translatesAutoresizingMaskIntoConstraints = false
        changeTextButton.setTitle("Изменить текст сверху", for: .normal)
        changeTextButton.setTitleColor(#colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1), for: .normal)
        changeTextButton.addTarget(self, action: #selector(changeTextButtonTapped), for: .touchUpInside)
    }
    
    
    //MARK: КОНСТРЕЙНТЫ
    //Функция для задания констрейнтов messageLabel
    private func setMessageLabelConstraints() {
        NSLayoutConstraint.activate([
            messageLabel.centerYAnchor.constraint(equalTo: centerYAnchor),
            messageLabel.leftAnchor.constraint(equalTo: leftAnchor, constant: 24)
        ])
    }
    
    //Функция для задания констрейнтов changeTextButton
    private func setChangeTextButtonConstraints() {
        NSLayoutConstraint.activate([
            changeTextButton.leftAnchor.constraint(equalTo: messageLabel.leftAnchor),
            changeTextButton.topAnchor.constraint(equalTo: messageLabel.bottomAnchor, constant: 8)
        ])
    }
    
    
    //MARK: ACTIONS
    //Функция, срабатывающая при нажатии на кнопку changeTextButton
    @objc private func changeTextButtonTapped() {
        print("Кнопа нажата")
        messageLabel.text = "Новый текст"
    }
    
    
}
