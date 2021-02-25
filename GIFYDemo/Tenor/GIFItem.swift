//
//  GIFObject.swift
//  GIFYDemo
//
//  Created by jps on 2019/9/25.
//  Copyright © 2019 jps. All rights reserved.
//

import Foundation
import SwiftyJSON

//文档
//https://tenor.com/gifapi/documentation#responseobjects-category



class GIFItem {
    
    ///表示创建此帖子的时间的unix时间戳
    var created: Float
    
    ///如果此帖子包含音频，则为true（仅视频格式支持音频，gif图像文件格式不能包含音频信息）
    var hasaudio: Bool
    
    ///Tenor result identifier
    var id: String
    
    ///以GIF_FORMAT为键，而MEDIA_OBJECT为值的字典数组
    var media: GIFFormatItem?
    
    ///标签数组
    var tags: [String]?
    
    ///标题
    var title: String?
    
    ///在tenor.com上查看帖子的完整URL
    var itemurl: String?
    
    ///用于在tenor.com上查看帖子的简短URL
    var url: String?
    
    
    
    ///
    var shares: Int
    
    
    ///
    var composite: Any?
    
    
    
    init(json: JSON) {
        created = json["created"].floatValue
        hasaudio = json["hasaudio"].boolValue
        id = json["id"].stringValue
        if let mediaJson = json["media"].array?.first {
            media = GIFFormatItem(json: mediaJson)
        }
        tags = json["tags"].arrayObject as? [String]
        title = json["title"].string
        itemurl = json["itemurl"].string
        url = json["url"].string
        shares = json["shares"].intValue
        composite = json["composite"].stringValue
    }
    
    
    
    
    
    
    
}

