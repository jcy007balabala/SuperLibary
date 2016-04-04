//
//  lacationViewController.swift
//  超级图书馆-01
//
//  Created by 贾翠英 on 16/3/30.
//  Copyright © 2016年 贾翠英. All rights reserved.
//

import UIKit

class lacationViewController: UIViewController ,UIPickerViewDataSource,UIPickerViewDelegate{
    
    
    var seat:Dictionary<String,String>= ["学校":"中北大学","第几图书馆":"1","第几室":"1","座位号":"18"]
    var seatArray = [ ]
    @IBOutlet weak var choosePickView: UIPickerView!

   
    @IBAction func okClick(sender: AnyObject) {
        
    }
      @IBOutlet weak var nameTextField: UITextField!
    var univarsitys = ["中北大学","太原理工","西安交大","山西大学"]
    
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int)->Int {
        return univarsitys.count
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String! {
        return univarsitys[row]
    }
  
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        nameTextField.text = univarsitys[row]
    }
       
     override func viewDidLoad() {
        super.viewDidLoad()
        choosePickView.delegate = self;
        //choosePickView.dataSource = self;
        // Do any additional setup after loading the view.
           }

   /* func getSeatArray ( ) -> Array
    {
       
        
            let filePath = NSBundle.mainBundle().pathForResource("seat.plist", ofType:nil )
            let mySeat = NSArray(contentsOfFile: filePath!)

        return mySeat
        
    }*
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
*/

}
