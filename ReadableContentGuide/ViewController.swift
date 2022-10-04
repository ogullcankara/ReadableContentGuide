//
//  ViewController.swift
//  ReadableContentGuide
//
//  Created by Ogulcan Kara on 5.10.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }
    
    func setupViews(){
        
        let label = makeLabel(witdhText: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam non risus ut lacus dignissim scelerisque. Ut dictum consectetur metus et pretium. Aenean ut tempor nibh. Morbi aliquet tincidunt euismod. Cras tristique diam a dolor varius, ac mollis justo lacinia. Nam quis aliquam metus. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aliquam tristique blandit mi non lacinia. Maecenas congue fringilla ante vel volutpat. Vivamus consequat suscipit nisi non egestas. Aenean ultrices aliquet sapien, ac lobortis diam posuere sed. Etiam finibus ante diam, ut feugiat odio venenatis in. Quisque nec leo facilisis, volutpat ante at, bibendum sapien. Praesent eleifend metus in faucibus eleifend. Pellentesque turpis orci, iaculis id viverra sed, porttitor vitae velit. Donec turpis tellus, varius in convallis vel, ullamcorper vitae metus. Phasellus fermentum viverra orci, non blandit justo efficitur eu. Mauris facilisis ultrices purus, eu convallis ligula sagittis at. Pellentesque maximus sed nisl vel commodo. Curabitur mattis, nunc sed pellentesque sagittis, mauris eros laoreet orci, in pulvinar lectus ligula non lacus. Donec efficitur tortor at faucibus fermentum. Vestibulum placerat, risus vel facilisis vehicula, dolor sapien pretium odio, sit amet iaculis nisi dui id lorem. Quisque quis erat quis dolor scelerisque fringilla ut a diam. Nunc vitae varius ligula, ut elementum lectus. Vivamus sit amet bibendum dolor. Proin nec nisi molestie, mattis dolor eu, porta orci. Quisque hendrerit eleifend orci, id dignissim ligula posuere nec. Donec facilisis risus ipsum, in convallis orci feugiat non. Curabitur faucibus elit suscipit rutrum porta. Pellentesque nec dui tempus ante iaculis rhoncus ut nec nisi. Aenean maximus purus et posuere consectetur.")
        
        view.addSubview(label)
        NSLayoutConstraint.activate([
            label.topAnchor.constraint(equalTo: view.readableContentGuide.topAnchor),
            label.leadingAnchor.constraint(equalTo: view.readableContentGuide.leadingAnchor),
            label.trailingAnchor.constraint(equalTo: view.readableContentGuide.trailingAnchor),
            label.bottomAnchor.constraint(equalTo: view.readableContentGuide.bottomAnchor)
        ])
    }

    func makeLabel(witdhText text: String) -> UILabel{
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = text
        label.backgroundColor = .gray
        label.numberOfLines = 0
        label.font = UIFont.systemFont(ofSize: 20)
        
        return label
    }
    
}

