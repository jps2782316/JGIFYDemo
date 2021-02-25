//
//  GiphyGifItem.swift
//  GIFYDemo
//
//  Created by jps on 2019/9/25.
//  Copyright © 2019 jps. All rights reserved.
//

import Foundation
import SwiftyJSON


//文档: https://developers.giphy.com/docs/api/schema/#gif-object

struct GiphyGifItem {
    
    ///默认情况下，这几乎总是GIF
    var type: String
    ///此GIF的唯一ID
    var id: String
    ///此GIF网址中使用的唯一的slug
    var slug: String?
    ///此GIF的唯一URL
    var url: String?
    ///此GIF的唯一bit.ly URL
    var bitly_url: String?
    ///用于嵌入此GIF的URL
    var embed_url: String?
    ///此GIF附加的用户名（如果适用）
    var username: String?
    ///找到此GIF的页面
    var source: String?
    ///此内容的MPAA风格评分。示例包括Y，G，PG，PG-13和R
    var rating: String?
    ///当前未使用
    var content_url: String?
    ///一个对象，其中包含有关与此GIF关联的用户的数据（如果适用）
    var user: GiphyGifUser?
    ///源URL的顶级域
    var source_tld: String?
    ///找到此GIF的网页的URL
    var source_post_url: String?
    
    ///此GIF的最后更新日期
    var update_datetime: String?
    ///此GIF添加到GIPHY数据库的日期
    var create_datetime: String?
    ///从此GIF来源创建或上传日期
    var import_datetime: String?
    ///将此gif标记为趋势的日期（如果适用）
    var trending_datetime: String?
    
    ///一个对象，其中包含此GIF的各种可用格式和大小的数据
    var images: GiphyGifFormatItem?
    
    
    ///该gif出现在giphy.com上的标题
    var title: String?
    
    
//    init(json: JSON) {
//
//    }
    
    
}





/*
 用户对象
 用户对象包含有关与GIF相关联的用户的信息以及资产的URL，例如该用户的头像图像，GIPHY配置文件等。
 */
struct GiphyGifUser {
    
    ///此用户的头像图像的URL
    var avatar_url: String?
    
    ///显示在该用户的个人资料页面顶部的标题图像的URL
    var banner_url: String?
    
    ///此用户的GIPHY配置文件的URL
    var profile_url: String?
    
    ///与此用户关联的用户名
    var username: String?
    
    ///与此用户关联的显示名称（可能不包含格式化基本用户名的格式）
    var display_name: String?
    
    
    
    
}





