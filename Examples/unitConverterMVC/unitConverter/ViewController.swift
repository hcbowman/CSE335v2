//
//  ViewController.swift
//  unitConverter
//
//  Created by user on 8/29/15.
//  Copyright (c) 2015 ASU. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITextFieldDelegate{

    @IBOutlet weak var unit2: UITextField!
    @IBOutlet weak var unit1: UITextField!
    @IBOutlet weak var calcView: UIView!
    @IBOutlet weak var kmToMiles: UIButton!
    @IBOutlet weak var litersToGalon: UIButton!
    @IBOutlet weak var kilosToPounds: UIButton!
    @IBOutlet weak var unit1Lbl: UILabel!
  
    @IBOutlet weak var convImage: UIImageView!
    @IBOutlet weak var unit2Lbl: UILabel!
    var convType: Int = 0
    let DIST_CONV=0, WEIGHT_CONV=1, VOLUME_CONV=2
    var yDistance:CGFloat = 0
    
    var conv: convModel = convModel()
    override func viewDidLoad() {
        super.viewDidLoad()
      
        // keyboard will appear notification to move the view upwards
        NotificationCenter.default.addObserver(self, selector: #selector(ViewController.keyboardWillShow(_:)), name:UIResponder.keyboardWillShowNotification, object: nil);

        // keyboard will hide notification to move the view downwards
        NotificationCenter.default.addObserver(self, selector: #selector(ViewController.keyboardWillHide(_:)), name:UIResponder.keyboardWillHideNotification, object: nil);
        
        // text field delegate methods are implemented in this view controller
        unit1.delegate=self
        unit2.delegate=self
        
         // frame size max y value
         yDistance = self.view.frame.maxY;
        
       
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func InitiateConversion(_ sender: UIButton) {
        // each button has a tag to identify the type of conversion
        convType = sender.tag
        if convType == DIST_CONV{
    
            distConversion()
        
        } else if convType == WEIGHT_CONV
        {
            weightConversion()
        }else
        {
            volumeConversion()
        }
    }
    
    func distConversion()
    {
     
        let image = UIImage(named: "road.jpg");
        self.convImage.image=image
        unit1Lbl.text="Kilometers"
        unit2Lbl.text="Miles"
        
        
    }
    
    func weightConversion()
    {
        let image = UIImage(named: "balance.jpg");
        self.convImage.image=image
        unit1Lbl.text="Kilos"
        unit2Lbl.text="Pound"
    }
    
    func volumeConversion()
    {
        let image = UIImage(named: "volume.jpg");
        self.convImage.image=image
        unit1Lbl.text="Liter"
        unit2Lbl.text="Galon"
    }
    
    // move the view upwards as keyboard appears
    @objc func keyboardWillShow(_ sender: Notification) {
        //self.view.frame.origin.y -= 160
        
        self.view.frame.origin.y -= yDistance/3
        
    }
    
    // move the view downwards as keyboard disapears
    
    @objc func keyboardWillHide(_ sender: Notification) {
        //self.view.frame.origin.y += 160
    
        self.view.frame.origin.y += yDistance/3
    }
    
    // make the keyboard disapear as user touches outside the  text boxes
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
        self.unit2.resignFirstResponder()
        self.unit1.resignFirstResponder()
        
    }
    
    // make the keyboard disapear as user press the enter key of the software keyboard
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {   //delegate method
        unit1.resignFirstResponder()
        unit2.resignFirstResponder()
        return true
    }
    
    // This delegate method of the textfield will be called when editiding is done in text fields and call the appropriate conversion
    
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
     // text field 1 has its tag set to 0 while text field has
    // its gag set to 1
        
        if textField.tag == 0 {
            // convert string to a double value
            let unitValue: Double = Double(unit1.text!)!
            
            // call the conv model's convert method
            let convertedVal: Double = conv.convert(convType, ToFrom: 0, value: unitValue)
            // format the converted value to two decimal points
            unit2.text = String(format: "%.2f", convertedVal)
            
        }else
        {
            let unitValue: Double = Double(unit2.text!)!
            let convertedVal: Double = conv.convert(convType, ToFrom: 1, value: unitValue)
            
            unit1.text = String(format: "%.2f", convertedVal)
        }
        
        
        return  true
 
  }
}

