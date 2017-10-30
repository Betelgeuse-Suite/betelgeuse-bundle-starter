import Foundation

public class Model {

    public let index: Index
    public class Index {
    
        public let default: Default
        public class Default {
        
            public let jackpocket_intro: String
            
            init(_ jsonData: NSDictionary) {
                self.jackpocket_intro = jsonData["jackpocket_intro"] as! String
            }
        }
        public let pages: Pages
        public class Pages {
        
            public let invite: Invite
            public class Invite {
            
                public let title: String
                public let call_to_action_button: String
                public let cards: Cards
                public class Cards {
                
                    public let how_does_pools_work: How_does_pools_work
                    public class How_does_pools_work {
                    
                        public let title: String
                        public let content: String
                        
                        init(_ jsonData: NSDictionary) {
                            self.title = jsonData["title"] as! String
                            self.content = jsonData["content"] as! String
                        }
                    }
                    
                    init(_ jsonData: NSDictionary) {
                        self.how_does_pools_work = How_does_pools_work(jsonData["how_does_pools_work"] as! NSDictionary)
                    }
                }
                
                init(_ jsonData: NSDictionary) {
                    self.title = jsonData["title"] as! String
                    self.call_to_action_button = jsonData["call_to_action_button"] as! String
                    self.cards = Cards(jsonData["cards"] as! NSDictionary)
                }
            }
            
            init(_ jsonData: NSDictionary) {
                self.invite = Invite(jsonData["invite"] as! NSDictionary)
            }
        }
        
        init(_ jsonData: NSDictionary) {
            self.default = Default(jsonData["default"] as! NSDictionary)
            self.pages = Pages(jsonData["pages"] as! NSDictionary)
        }
    }
    
    init(_ jsonData: NSDictionary) {
        self.index = Index(jsonData["index"] as! NSDictionary)
    }
}