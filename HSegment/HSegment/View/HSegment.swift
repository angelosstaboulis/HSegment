//
//  HSegment.swift
//  HSegment
//
//  Created by Angelos Staboulis on 28/5/21.
//

import UIKit
@IBDesignable
class HSegment: UIView {
    var button:UIButton!
    var oldColor:UIColor!
    var buttons:[UIButton]=[]
    var segments:Int!
    
    /*
     // Only override draw() if you perform custom drawing.
     // An empty implementation adversely affects performance during animation.
     override func draw(_ rect: CGRect) {
     // Drawing code
     }
     */
    var scrollView:UIScrollView!
    override init(frame: CGRect) {
        super.init(frame: frame)
        
    }
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        scrollView = UIScrollView(frame: CGRect(x: 0, y: 0, width: self.bounds.width, height: 146))
        createSegments()
    }

    func createButton(index:Int,title:String){
        let scrollWidth = 10+(80*segments)
        button = UIButton(frame: CGRect(x: 10+(80*index), y: 55, width: 80, height: 45))
        button.backgroundColor =  UIColor.init(red: 220/255, green: 220/255, blue: 220/255, alpha: 0.9)
        button.setTitle(title, for: .normal)
        button.layer.cornerRadius = 10
        self.scrollView.addSubview(button)
        button.addTarget(self, action: #selector((clickButtons(sender:))), for: .allEvents)
        buttons.append(button)
        scrollView.contentSize = CGSize(width: scrollWidth+20, height: 146)
    }
    func createSegments(){
        self.addSubview(scrollView)
        oldColor = UIColor.init(red: 220/255, green: 220/255, blue: 220/255, alpha: 0.9)
    }
    @objc func clickButtons(sender:UIButton){
        for item in 0..<buttons.count{
            buttons[item].backgroundColor = oldColor
        }
        sender.backgroundColor = .gray
    }
    
}
