//
//  superStuViewController.swift
//  超级图书馆-01
//
//  Created by 贾翠英 on 16/3/29.
//  Copyright © 2016年 贾翠英. All rights reserved.
//

import UIKit

class superStuViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
    var dataTable:UITableView!;                                             //数据表格
    
    //当前屏幕对象
    var screenObject=UIScreen.mainScreen().bounds;

    override func viewDidLoad() {
        super.viewDidLoad()
        initView();
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func initView(){
        //self.title="找学霸";
        self.view.backgroundColor = UIColor.whiteColor()    ;
        creatTable();
    }
   
    
    func creatTable(){
        let dataTableW:CGFloat=screenObject.width;
        let dataTableH:CGFloat=screenObject.height;
        let dataTableX:CGFloat=0.0;
        let dataTableY:CGFloat=131.0;
        dataTable=UITableView(frame: CGRectMake(dataTableX, dataTableY, dataTableW, dataTableH),style:UITableViewStyle.Grouped);
        dataTable.delegate = self;
        dataTable.dataSource = self;
        
        self.view.addSubview(dataTable);
    }
    //1.1默认返回一组
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1;
    }
    
    // 1.2 返回行数
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return  10;
    }
    
    //1.3 返回行高
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat{
        
        if(indexPath.section == 0){
            return 80;
        }else{
            return 55;
            
        }
    }
    
    //1.4每组的头部高度
    func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 1;
    }
    
    //1.5每组的底部高度
    func tableView(tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 1;
    }
    //1.6 返回数据源
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let identifier="identtifier";
        var cell=tableView.dequeueReusableCellWithIdentifier(identifier);
        if(cell == nil){
            cell=UITableViewCell(style: UITableViewCellStyle.Value1, reuseIdentifier: identifier);
        }
        let  str1 = "高斯定理怎么用啊";
        var  turn  = (indexPath.row + 4);
        cell?.textLabel?.font = UIFont.systemFontOfSize(13.00)

        //print("%i",turn)
        
        var str2 = String(turn);
        //var  str3 = str1+str2;
        
        cell?.textLabel?.text = str1;
        cell?.detailTextLabel?.text = "有谁会呀？帮帮忙呗"
        cell?.detailTextLabel?.font = UIFont.systemFontOfSize(13.00)
        //print(indexPath.row)
        
        cell?.imageView?.image = UIImage(named: "seat"+str2)
        cell?.accessoryType=UITableViewCellAccessoryType.DisclosureIndicator;
        return cell!;
    }
  

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
