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
    
    private lazy var faceSegmentedControl: UISegmentedControl = {
        let segmentControl = UISegmentedControl()
        segmentControl.insertSegment(withTitle: "♠️", at: segmentControl.numberOfSegments, animated: true)
        segmentControl.insertSegment(withTitle: "❤️", at: segmentControl.numberOfSegments, animated: true)
        segmentControl.insertSegment(withTitle: "♣️", at: segmentControl.numberOfSegments, animated: true)
        segmentControl.insertSegment(withTitle: "♦️", at: segmentControl.numberOfSegments, animated: true)
        segmentControl.selectedSegmentIndex = 0
        return segmentControl
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureView()
    }
    
    private func configureView() {
        view.backgroundColor = .systemGreen
        setupFaceSegmentedControl()
        setupTitleLabel()
    }
    
    private func setupFaceSegmentedControl() {
        view.addSubview(faceSegmentedControl)

        faceSegmentedControl.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            faceSegmentedControl.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            faceSegmentedControl.centerYAnchor.constraint(equalTo: view.centerYAnchor)])
        print(faceSegmentedControl.frame.width)
        print(faceSegmentedControl.numberOfSegments)
    }
    
    private func setupTitleLabel() {
        view.addSubview(titleLabel)
        
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            titleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            titleLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor)])
    }
}
