//
//  ViewController.swift
//  ControlsLab
//
//  Created by Ahad Islam on 12/14/19.
//  Copyright © 2019 Benjamin Stone. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Card Generator"
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 40)
        return label
    }()
    
    private lazy var selectSuitLabel: UILabel = {
        let label = UILabel()
        label.text = "Select Suit"
        label.textAlignment = .center
        return label
    }()
    
    private lazy var faceSegmentedControl: UISegmentedControl = {
        let segmentControl = UISegmentedControl()
        segmentControl.insertSegment(withTitle: "♠️", at: segmentControl.numberOfSegments, animated: true)
        segmentControl.insertSegment(withTitle: "❤️", at: segmentControl.numberOfSegments, animated: true)
        segmentControl.insertSegment(withTitle: "♣️", at: segmentControl.numberOfSegments, animated: true)
        segmentControl.insertSegment(withTitle: "♦️", at: segmentControl.numberOfSegments, animated: true)
        segmentControl.selectedSegmentIndex = 0
        segmentControl.addTarget(self, action: #selector(changeText), for: .valueChanged)
        return segmentControl
    }()
    
    private lazy var valueLabel: UILabel = {
        let label = UILabel()
        label.text = "Choose value"
        label.textAlignment = .center
        return label
    }()
    
    private lazy var cardStepper: UIStepper = {
        let stepper = UIStepper()
        stepper.maximumValue = 13
        stepper.minimumValue = 1
        stepper.stepValue = 1
        stepper.value = 1
        stepper.addTarget(self, action: #selector(changeText), for: .valueChanged)
        return stepper
    }()
    
    private lazy var cardView: UIView = {
        let view = UIView()
        view.backgroundColor = .systemBackground
        view.layer.borderWidth = 5
        view.layer.cornerRadius = 12
        return view
    }()
    
    private lazy var cardLabel1: UILabel = {
        let label = UILabel()
        label.textAlignment = .left
        label.text = "1"
        return label
    }()
    
    private lazy var cardLabel2: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 40)
        label.text = "2"
        return label
    }()
    
    private lazy var cardLabel3: UILabel = {
        let label = UILabel()
        label.textAlignment = .right
        label.text = "3"
        return label
    }()
    
    private var currentCard: String {
        switch faceSegmentedControl.selectedSegmentIndex {
        case 0:
            return "♠️"
        case 1:
            return "❤️"
        case 2:
            return "♣️"
        case 3:
            return "♦️"
        default:
            return ""
        }
    }
    
    private var currentFace: String {
        switch cardStepper.value {
        case 1:
            return "A"
        case 11:
            return "J"
        case 12:
            return "Q"
        case 13:
            return "K"
        default:
            return "\(Int(cardStepper.value))"
        }
    }
    
    private var card: String {
        currentFace + " " + currentCard
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        configureView()
        print(currentCard)
        print(card)
    }
    
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        cardView.layer.borderColor = UIColor.label.cgColor
    }
    
    @objc func changeText() {
        cardLabel1.text = card
        cardLabel2.text = card
        cardLabel3.text = card
    }
    
    private func configureView() {
        setupTitleLabel()
        setupSelectSuitLabel()
        setupFaceSegmentedControl()
        setupValueLabel()
        setupCardStepper()
        setupCardView()
        setupCardLabel1()
        setupCardLabel2()
        setupCardLabel3()
        changeText()
    }
    
    private func setupTitleLabel() {
        view.addSubview(titleLabel)
        
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            titleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            titleLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor)])
    }
    
    private func setupSelectSuitLabel() {
        view.addSubview(selectSuitLabel)
        
        selectSuitLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            selectSuitLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 30),
            selectSuitLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            selectSuitLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor)])
    }
    
    private func setupFaceSegmentedControl() {
        view.addSubview(faceSegmentedControl)
        
        faceSegmentedControl.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            faceSegmentedControl.topAnchor.constraint(equalTo: selectSuitLabel.bottomAnchor, constant: 8),
            faceSegmentedControl.centerXAnchor.constraint(equalTo: view.centerXAnchor)])
        }
    
    private func setupValueLabel() {
        view.addSubview(valueLabel)
        
        valueLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            valueLabel.topAnchor.constraint(equalTo: faceSegmentedControl.bottomAnchor, constant: 20),
            valueLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)])
    }
    
    private func setupCardStepper() {
        view.addSubview(cardStepper)
        
        cardStepper.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            cardStepper.topAnchor.constraint(equalTo: valueLabel.bottomAnchor, constant: 8),
            cardStepper.centerXAnchor.constraint(equalTo: view.centerXAnchor)])
    }
    
    private func setupCardView() {
        view.addSubview(cardView)
        
        cardView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            cardView.topAnchor.constraint(equalTo: cardStepper.bottomAnchor, constant: 20),
            cardView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20),
            cardView.widthAnchor.constraint(equalToConstant: view.frame.width / 1.5),
            cardView.centerXAnchor.constraint(equalTo: view.centerXAnchor)])
    }
    
    private func setupCardLabel1() {
        view.addSubview(cardLabel1)
        
        cardLabel1.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            cardLabel1.topAnchor.constraint(equalTo: cardView.topAnchor, constant: 20),
            cardLabel1.leadingAnchor.constraint(equalTo: cardView.leadingAnchor, constant: 20)])
    }
    
    private func setupCardLabel2() {
        view.addSubview(cardLabel2)
        
        cardLabel2.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            cardLabel2.centerYAnchor.constraint(equalTo: cardView.centerYAnchor),
            cardLabel2.centerXAnchor.constraint(equalTo: cardView.centerXAnchor)])
    }
    
    private func setupCardLabel3() {
        view.addSubview(cardLabel3)
        
        cardLabel3.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            cardLabel3.bottomAnchor.constraint(equalTo: cardView.bottomAnchor, constant: -20),
            cardLabel3.trailingAnchor.constraint(equalTo: cardView.trailingAnchor, constant: -20)])
    }
}
