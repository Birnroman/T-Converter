//
//  ViewController.swift
//  T-Converter
//
//  Created by Rum Gersy on 09.03.2022.
//

import UIKit

class ViewController: UIViewController {


    @IBOutlet var slider: UISlider!
    @IBOutlet var celsiusLabel: UILabel!
    @IBOutlet var fahrenheitLabel: UILabel!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        slider.transform = CGAffineTransform(rotationAngle: -CGFloat.pi / 2)
        slider.minimumValue = 0
        slider.maximumValue = 100
        slider.value = 0
        fahrenheitLabel.text = "32ºF"
    }

    @IBAction func sliderValueChange(_ sender: UISlider) {
        let temperatureCelsius = Int(round(sender.value))
        celsiusLabel.text = "\(temperatureCelsius)ºC"
        
        let temperatureFahrenheit = Int(round((sender.value * 9 / 5) + 32))
        fahrenheitLabel.text = "\(temperatureFahrenheit)ºF"
    }
    
    

    
}


