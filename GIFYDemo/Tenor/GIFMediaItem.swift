//
//  MediaObject.swift
//  GIFYDemo
//
//  Created by jps on 2019/9/25.
//  Copyright © 2019 jps. All rights reserved.
//

import Foundation
import SwiftyJSON


struct GIFMediaItem {
    
    ///媒体源预览图像的URL
    var preview: String?
    
    ///文件大小（以字节为单位）
    var size: Int
    
    ///媒体来源的网址
    var url: String
    
    ///宽度和高度（以像素为单位）
    var dims: [Int]?
    
    ///时长 (mp4才有此项，gif没有)
    var duration: Float?
    
    
    
    init?(json: JSON) {
        guard let url = json["url"].string else { return nil }
        
        preview = json["preview"].string
        size = json["size"].intValue
        self.url = url
        dims = json["dims"].arrayObject as? [Int]
        duration = json["duration"].float
    }
    
}





