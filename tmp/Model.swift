import Foundation

public class Model {

    public let index: Index
    public class Index {
    
        public let index: NSNull
        
        init(_ jsonData: NSDictionary) {
            self.index = jsonData["index"] as! NSNull
        }
    }
    
    init(_ jsonData: NSDictionary) {
        self.index = Index(jsonData["index"] as! NSDictionary)
    }
}