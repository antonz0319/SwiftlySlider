//
//  ViewController.swift
//  SwiftlyVolumeSlider
//
//  Created by Maxim Bilan on 6/6/16.
//  Copyright © 2016 Maxim Bilan. All rights reserved.
//

import UIKit

class ViewController: UIViewController, SwiftlySliderDelegate {

	// MARK: - Outlets
	
	@IBOutlet weak var volumeSlider: SwiftlySlider!
	@IBOutlet weak var verticalVolumeSlider: SwiftlySlider!
	@IBOutlet weak var testLabel: UILabel!
	
	// MARK: - UIViewController methods
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		volumeSlider.delegate = self
		volumeSlider.bgColor = UIColor.white
		volumeSlider.direction = SwiftlySlider.PickerDirection.horizontal
		volumeSlider.minValue = 1
		volumeSlider.maxValue = 20
		volumeSlider.currentValue = 17
		volumeSlider.sliderImage = UIImage(named: "Slider")
		volumeSlider.sliderImageOffset = CGPoint(x: 0, y: -1)
		volumeSlider.sliderSize = CGSize(width: 30, height: 15)
		volumeSlider.bgColor = UIColor.yellow
		volumeSlider.useNormalIndicator = true
		volumeSlider.normalValue = 15
		
		verticalVolumeSlider.delegate = self
		verticalVolumeSlider.direction = SwiftlySlider.PickerDirection.vertical
		verticalVolumeSlider.useNormalIndicator = false
	}

	// MARK: - SwiftlyVolumeSliderDelegate
	
	func swiftlySliderValueChanged(_ value: Int) {
		testLabel.text = "\(value)"
	}
	
}
