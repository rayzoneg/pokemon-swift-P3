

import Foundation
import UIKit
import SwiftUI

class Pokemon: Identifiable{
    
    var id = UUID()
    var nome:String
    var imgtype:UIImage
    var img:UIImage
    var atk = 20
    var def = 20
    var xp = 64
    
    init(nome:String, imgtype:String , img:String, xp: Int){
        self.nome = nome
        self.imgtype = UIImage(named: imgtype) ?? UIImage.defImg
        self.img = UIImage(named: img) ?? UIImage.defImg
        self.xp = xp
    }
    
}
