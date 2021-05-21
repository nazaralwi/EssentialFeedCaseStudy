//
//  Created by Nazar Alwi on 21/05/21
//  Copyright © 2021 Nazar Alwi. All rights reserved.
//

import Foundation

public final class CoreDataFeedStore: FeedStore {
    public init() {}
    
    public func deleteCachedFeed(completion: @escaping DeletionCompletion) {
        
    }
    
    public func insert(_ feed: [LocalFeedImage], timestamp: Date, completion: @escaping InsertionCompletion) {
        
    }
    
    public func retrieve(completion: @escaping FeedStore.RetrievalCompletion) {
        completion(.empty)
    }
}
