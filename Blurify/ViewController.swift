//
//  ViewController.swift
//  Blurify
//
//  Created by Agus Cahyono on 10/31/16.
//  Copyright © 2016 balitax. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
	
	var blurEffect: UIBlurEffect?
	var blurEffectView: UIVisualEffectView?
	
	@IBOutlet weak var imagesIron: UIImageView!

	override func viewDidLoad() {
		super.viewDidLoad()
	}

	
	@IBAction func buliryImage(_ sender: UIButton) {
		makeBlurImage(targetImageView: self.imagesIron)
	}

	@IBAction func normallyImage(_ sender: UIButton) {
		self.blurEffectView?.removeFromSuperview()
	}
	
	func makeBlurImage(targetImageView:UIImageView?) {
		blurEffect = UIBlurEffect(style: UIBlurEffectStyle.dark)
		blurEffectView = UIVisualEffectView(effect: blurEffect)
		blurEffectView?.frame = targetImageView!.bounds
		blurEffectView?.autoresizingMask = [.flexibleWidth, .flexibleHeight]
		targetImageView?.addSubview(blurEffectView!)
	}
	

}
