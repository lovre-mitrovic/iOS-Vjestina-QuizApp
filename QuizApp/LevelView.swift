//
//  LevelView.swift
//  QuizApp
//
//  Created by Lovre on 14/04/2021.
//

import Foundation
import UIKit

class LevelView: UIView{
    
    private var level:Int
    
    init(frame: CGRect, levelOfQuestion:Int){
        level = levelOfQuestion
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView(){
        self.backgroundColor = UIColor(hue: 0, saturation: 0, brightness: 0, alpha: 0)
        let label = UILabel()
        self.addSubview(label)
        label.autoPinEdge(toSuperviewEdge: .leading)
        label.autoPinEdge(toSuperviewEdge: .top)
        label.textColor = Styles.secondColor
        switch level{
        case 1:
            label.text = "X O O"
            break
        case 2:
            label.text = "X X O"
            break
        case 3:
            label.text = "X X X"
            break
        default:
            break
        }
        
    }
}
