//
//  MainView.swift
//  Programmatic-UI-Lab
//
//  Created by Chelsi Christmas on 1/28/20.
//  Copyright © 2020 Chelsi Christmas. All rights reserved.
//

import UIKit

class MainView: UIView {

    
    public lazy var gameTitleLabel: UILabel = {
      let label = UILabel()
        label.text = "Color Guessing Game"
        return label
    }()
    
    public lazy var highScoreLabel: UILabel = {
      let label = UILabel()
        label.text = "High Score:"
        return label
    }()
    
    public lazy var highScore: UILabel = {
        let label = UILabel()
        label.text = "0"
        return label
    }()
    
    public lazy var scoreLabel: UILabel = {
      let label = UILabel()
        label.text = "Score:"
        return label
    }()
    
    public lazy var score: UILabel = {
        let label = UILabel()
        label.text = "0"
        return label
    }()
    
    public lazy var display: UIView = {
        let view = UIView()
        return view
    }()
    
    public lazy var redButton: UIButton = {
       let button = UIButton()
        button.backgroundColor = UIColor(named: "red")
        
        return button
    }()
    
    public lazy var blueButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor(named: "blue")
        return button
    }()

    public lazy var greenButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = UIColor(named: "green")
        return button
    }()
    override init(frame: CGRect) {
        super.init(frame: UIScreen.main.bounds)
        commonInit()
    }
    
    required init?(coder: NSCoder) {
           super.init(coder: coder)
           commonInit()
       }
    
    private func commonInit() {
        setupGameTitleLabel()
        setupHighScoreLabel()
        setupHighScore()
        setupScore()
        //setupDisplay()
    }
    
    private func setupGameTitleLabel() {
        addSubview(gameTitleLabel)
        gameTitleLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
        gameTitleLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 25),
        gameTitleLabel.centerXAnchor.constraint(equalTo: centerXAnchor)
        ])
        
    }
    
    private func setupHighScoreLabel() {
        addSubview(highScoreLabel)
        highScoreLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            highScoreLabel.topAnchor.constraint(equalTo: gameTitleLabel.bottomAnchor, constant: 20),
            highScoreLabel.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 20)
        ])
    }
    
    func setupHighScore() {
        addSubview(highScore)
        highScore.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            highScore.topAnchor.constraint(equalTo: gameTitleLabel.bottomAnchor, constant: 20),
            highScore.leadingAnchor.constraint(equalTo: highScoreLabel.trailingAnchor, constant: 8)
        ])
    }
    
    func setupScore() {
        
        addSubview(score)
        score.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            score.topAnchor.constraint(equalTo: gameTitleLabel.bottomAnchor, constant: 20),
            score.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -30)
        ])
    }
    
    
    private func setupScoreLabel() {
        addSubview(scoreLabel)
        scoreLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            scoreLabel.topAnchor.constraint(equalTo: gameTitleLabel.bottomAnchor, constant: 20),
            scoreLabel.trailingAnchor.constraint(equalTo: score.leadingAnchor, constant: -8)
        ])
    }
    private func setupDisplay() {
        addSubview(display)
        display.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            display.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 30),
            display.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20)
        ])
        
        display.backgroundColor = UIColor(named: "blue")
    }
    private func setupGreenButton() {
        
        addSubview(greenButton)
        greenButton.translatesAutoresizingMaskIntoConstraints = false
    }
    
    private func setupBlueButton() {
        
        addSubview(blueButton)
        blueButton.translatesAutoresizingMaskIntoConstraints = false
    }
    
    private func setupRedButton() {
        
        addSubview(redButton)
        redButton.translatesAutoresizingMaskIntoConstraints = false
    }
    
    
}
