//
//  Extensions.swift
//  Pods
//
//  Created by Huan Jiang on 5/14/16.
//
//

public extension String {
    func toDictionary() -> [String: AnyObject]? {
        if let data = self.dataUsingEncoding(NSUTF8StringEncoding) {
            do {
                return try NSJSONSerialization.JSONObjectWithData(data, options: []) as? [String: AnyObject]
            } catch let error as NSError {
                print(error)
            }
        }
        
        return nil
    }
}