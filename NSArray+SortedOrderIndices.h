//
//  NSArray+SortedOrderIndices.h
//  deneme
//
//  Created by Guven Iscan on 13/04/14.
//  Copyright (c) 2014 Guven Iscan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSArray (SortedOrderIndices)

//Returns indices of array ordered ascending
-(NSArray *) sortedOrderIndicesOfArray:(NSArray *) array;

//Returns indices of array sorted
-(NSArray *) sortedOrderIndicesOfArray:(NSArray *) array ascending:(BOOL) ascending;

@end
