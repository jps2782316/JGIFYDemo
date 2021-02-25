//
//  GiphyRatingType.swift
//  GIFYDemo
//
//  Created by jps on 2019/9/25.
//  Copyright © 2019 jps. All rights reserved.
//

import Foundation

/*
 内容分级:
 GIF适用于所有人，GIPHY致力于确保其GIF搜索对每个人都是积极的体验。我们非常重视内容安全。我们的GIF和贴纸库经过全面审核和按等级组织，以便为GIPHY用户提供最安全的搜索体验。我们会毫不犹豫地删除不属于我们的社区准则的内容.
 */




///GIPHY内容分级规范
enum GiphyRatingType: String {
    ///适合所有年龄段和所有人群的内容
    case g = "G"
    ///通常对所有人都安全的内容，但可能需要家长预览才能让孩子观看
    case pg = "PG"
    ///轻度的性爱暗示，轻度的吸毒，轻度的亵渎或威胁性图像。可能包含半裸的人的图像，但不显示真实的人类生殖器或裸露内容
    case pg_13 = "PG-13"
    ///粗俗语言，强烈的性暗示，暴力和非法吸毒；不适合青少年或以下。没有裸体
    case r = "R"
}
