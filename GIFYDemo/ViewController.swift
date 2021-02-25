//
//  ViewController.swift
//  GIFYDemo
//
//  Created by jps on 2019/9/25.
//  Copyright © 2019 jps. All rights reserved.
//

import UIKit
import SwiftyJSON

let apikey = "LIVDSRZULELA"

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
       // requestData()
    }

    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        //使用tenor api
        //requestDataTenor()
        
        //使用giphy api
        
    }
    
    
    
    
    /// 搜索GIF资源
    /// - Parameter keyWords: 搜索查询词或短语
    /// - Parameter limit: 返回的最大对象数。（默认：“ 25”）
    /// - Parameter offset: 指定结果的起始位置。预设为0。
    /// - Parameter rating: 按指定的等级过滤结果。如果您未指定等级，您将收到所有可能等级的结果 。(例: g)
    /// - Parameter randomId: 特定用户的ID /代理
    func searchDateGiphy(keyWords: String,
                         limit: Int32? = nil,
                         offset: Int32? = nil,
                         rating: GiphyRatingType? = nil,
                         randomId: String? = nil) {
        let url = "api.giphy.com/v1/gifs/search"
        //GIPHY API密钥
        let apiKey = ""
        //指定区域内容的默认语言；使用2个字母的ISO 639-1语言代码 (例: en)
        let language = ""
        
        var param: [String: Any] = ["api_key": apiKey, "lang": language]
        param.updateValue(keyWords, forKey: "q")
        if let lim = limit {
            param.updateValue(lim, forKey: "limit")
        }
        if let offs = offset {
            param.updateValue(offs, forKey: "offset")
        }
        if let rat = rating?.rawValue {
            param.updateValue(rat, forKey: "rating")
        }
        if let rId = randomId {
            param.updateValue(rId, forKey: "random_id")
        }
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    /*
    
    /**
      Execute web request to retrieve the top GIFs returned(in batches of 8) for the given search term.
      */
     func requestDataTenor()
     {
       // the test search term
       let searchTerm = "love"

       // Define the results upper limit
       let limit = 8

       // make initial search request for the first 8 items
        
        let str = String(format: "https://api.tenor.com/v1/search?q=%@&key=%@&limit=%d", searchTerm, apikey, limit)
       let searchRequest = URLRequest(url: URL(string: str)!)

       makeWebRequest(urlRequest: searchRequest, callback: tenorSearchHandler)

       // Data will be loaded by each request's callback
     }

     /**
      Async URL requesting function.
      */
     func makeWebRequest(urlRequest: URLRequest, callback: @escaping ([String:AnyObject]) -> ())
     {
       // Make the async request and pass the resulting json object to the callback
       let task = URLSession.shared.dataTask(with: urlRequest) { (data, response, error) in
         do {
           if let jsonResult = try JSONSerialization.jsonObject(with: data!, options: []) as? [String:AnyObject] {
             // Push the results to our callback
             callback(jsonResult)
           }
         } catch let error as NSError {
           print(error.localizedDescription)
         }
       }
       task.resume()
     }
    
     /**
      Web response handler for search requests.
      */
     func tenorSearchHandler(response: [String:AnyObject])
     {
       // Parse the json response
       let responseGifs = response["results"]!
        
        
       // let dic = responseGifs as? [String: Any]
       // let first = dic?.first
        
        let json = JSON(responseGifs).array
        let gifItemArr = json?.map({ GIFItem(json: $0) })
        
       // Load the GIFs into your view
       print("Result GIFS: \(responseGifs)")
        
        print("数组: \(String(describing: gifItemArr))")

     }

    
    
    */
    
    
    
    
}

