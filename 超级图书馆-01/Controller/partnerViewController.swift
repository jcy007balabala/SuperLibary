//
//  partnerViewController.swift
//  超级图书馆-01
//
//  Created by 贾翠英 on 16/3/29.
//  Copyright © 2016年 贾翠英. All rights reserved.
//

import UIKit

class partnerViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {

    var dataTable:UITableView!;
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
        //self.title="找伙伴";
        self.view.backgroundColor = UIColor.whiteColor()    ;
        creatTable();
    }
     
    func creatTable(){
        let dataTableW:CGFloat=screenObject.width;
        let dataTableH:CGFloat=screenObject.height;
        let dataTableX:CGFloat=0.0;
        let dataTableY:CGFloat=44.0;
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
        return  5;
    }
    
    //1.3 返回行高
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat{
        
        /*if(indexPath.section == 0){
            return 80;
        }else{
            return 55;
            
        }*/
        return 60
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
        
        if(indexPath.section == 0)
        {
           cell?.textLabel?.font = UIFont.systemFontOfSize(13.00)
            switch(indexPath.row)
            {
            case 0:  cell?.textLabel?.text = "考研吧"
                         cell?.imageView?.image = UIImage(named:"13")
            case 1:  cell?.textLabel?.text = "四级一起过"
            cell?.imageView?.image = UIImage(named:"14")
            case 2:  cell?.textLabel?.text = "学习累了吧，一起跑步呗"
            cell?.imageView?.image = UIImage(named:"15")
            case 3:  cell?.textLabel?.text = "期末啦~"
            cell?.imageView?.image = UIImage(named:"16")
            case 4:  cell?.textLabel?.text = "公务员"
            cell?.imageView?.image = UIImage(named:"17")
            default:""
                
            }
           /* if(indexPath.row == 0)
            {
                cell?.textLabel?.text = "考研吧"
            }
            else*/
            
        }
      /* let  str1 = "考研小伙伴";
        var  turn  = (indexPath.row+13);
        
        var str2 = String(turn);
        var  str3 = str1+str2;
        print("%s",str2)
        cell?.textLabel?.text = str3;
        //print(indexPath.row)
        
        cell?.imageView?.image = UIImage(named:
            str2)*/
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
