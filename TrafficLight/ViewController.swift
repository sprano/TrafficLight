//
//  ViewController.swift
//  TrafficLight
//
//  Created by Sofi Prano on 06.05.2024.
//

import UIKit

enum Color {
    case red
    case yellow
    case green
}

final class ViewController: UIViewController {

    @IBOutlet var redLight: UIView!
    @IBOutlet var yellowLight: UIView!
    @IBOutlet var greenLight: UIView!
    @IBOutlet var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redLight.layer.cornerRadius = 64
        yellowLight.layer.cornerRadius = 64
        greenLight.layer.cornerRadius = 64
        startButton.layer.cornerRadius = 10
        redLight.layer.opacity = 0.3
        yellowLight.layer.opacity = 0.3
        greenLight.layer.opacity = 0.3
    }
    
    var color = Color.red
    
    @IBAction func turnTrafficLightOn() {
        startButton.setTitle(
            startButton.isSelected ? "START" : "NEXT", for: .normal
            )
        
        switch color {
        case .red:
            redLight.layer.opacity = 1
            yellowLight.layer.opacity = 0.3
            greenLight.layer.opacity = 0.3
            color = .yellow
        case .yellow:
            redLight.layer.opacity = 0.3
            yellowLight.layer.opacity = 1
            greenLight.layer.opacity = 0.3
            color = .green
        case .green:
            redLight.layer.opacity = 0.3
            yellowLight.layer.opacity = 0.3
            greenLight.layer.opacity = 1
            color = .red
        }
    }
}

