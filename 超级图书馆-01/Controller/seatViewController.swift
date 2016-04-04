//
//  seatViewController.swift
//  超级图书馆-01
//
//  Created by 贾翠英 on 16/3/29.
//  Copyright © 2016年 贾翠英. All rights reserved.
//

import UIKit

class seatViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {

    var schoolImage:UIImageView!;
    
    var dataTable:UITableView!;                                             //数据表格
    
    //当前屏幕对象
    var screenObject=UIScreen.mainScreen().bounds;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createImage()
         initView();
    }

    func schoolImageLoad()
    {
        self.view.backgroundColor = UIColor.whiteColor()
        createImage()
    }
    func createImage()
    {
        let dataTableW:CGFloat=screenObject.width;
        let dataTableH:CGFloat=140.0;
        let dataTableX:CGFloat=0.0;
        let dataTableY:CGFloat=44.0;
        schoolImage = UIImageView(frame: CGRectMake(dataTableX, dataTableY, dataTableW, dataTableH))
        schoolImage.image = UIImage(named: "school")
        self.view.addSubview(schoolImage)
        
        let  nameOfUnivarsity:UILabel!
        nameOfUnivarsity = UILabel(frame: CGRectMake(50.0, 100.0, 100.0, 30.0))
        nameOfUnivarsity.text = "中北大学"
        self.schoolImage.addSubview(nameOfUnivarsity)
    }
    func initView(){
        //self.title="找座位";
        self.view.backgroundColor = UIColor.whiteColor()    ;
        creatTable();
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
      }
    
    func creatTable(){
        let dataTableW:CGFloat=screenObject.width;
        let dataTableH:CGFloat=screenObject.height;
        let dataTableX:CGFloat=0.0;
        let dataTableY:CGFloat=184.0;
        dataTable=UITableView(frame: CGRectMake(dataTableX, dataTableY, dataTableW, dataTableH),style:UITableViewStyle.Grouped);
        dataTable.delegate = self;
        dataTable.dataSource = self;
  
        self.view.addSubview(dataTable);
    }
    //1.1默认返回一组
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 3;
    }
    
    // 1.2 返回行数
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if(section == 0)
        {
            return 5
        }
        else if(section == 1)
        {
            return 6
        }
        else
        {
        return  7
        }
    }
    
    func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        var headers = ["第一室","第二室","第三室"]
        return headers[section];
    }
    //1.3 返回行高
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat{
        
        if(indexPath.section == 0){
            return 60;
        }else{
            return 60;
            
        }
    }
    
    //1.4每组的头部高度
    func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 20;
    }
    
    //1.5每组的底部高度
    func tableView(tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        return 20;
    }
    //1.6 返回数据源
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {

        let identifier="identtifier";
        var cell=tableView.dequeueReusableCellWithIdentifier(identifier);
        if(cell == nil){
            cell=UITableViewCell(style: UITableViewCellStyle.Value1, reuseIdentifier: identifier);
        }
        print("tuishong")
        let  str1 = "座位";
        var  turn  = indexPath.row;
        
        var str2 = String(turn);
        var  str3 = str1+str2;
       cell?.textLabel?.font = UIFont.systemFontOfSize(13.00)
       cell?.detailTextLabel?.font = UIFont.systemFontOfSize(13.00)
       cell?.textLabel?.text = str3;
        //print(indexPath.row)
        
        cell?.imageView?.image = UIImage(named: "seat"+str2)
        cell?.detailTextLabel?.text = "只提供给妹子吆"
        cell?.accessoryType=UITableViewCellAccessoryType.DisclosureIndicator;
        return cell!;
    }
    //1.7 表格点击事件
  /*  func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        //取消选中的样式
        tableView.deselectRowAtIndexPath(indexPath, animated: true);
        　　　//获取点击的行索引
        if(indexPath.row == 0){
            let pushSingleInfo=singleInfo();
            pushSingleInfo.hidesBottomBarWhenPushed=true;　　　　//隐藏导航栏
            self.navigationController?.pushViewController(pushSingleInfo, animated: true);
        }
    }*/

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
