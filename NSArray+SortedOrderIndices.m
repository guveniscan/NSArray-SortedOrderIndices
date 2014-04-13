//
//  NSArray+SortedOrderIndices.m
//  deneme
//
//  Created by Guven Iscan on 13/04/14.
//  Copyright (c) 2014 Guven Iscan. All rights reserved.
//

#import "NSArray+SortedOrderIndices.h"

@implementation NSArray (SortedOrderIndices)

-(NSArray *) sortedOrderIndicesOfArray:(NSArray *) array
{
    return [self sortedOrderIndicesOfArray:array ascending:TRUE];
}

-(NSArray *) sortedOrderIndicesOfArray:(NSArray *) array ascending:(BOOL) ascending
{
    //Wrap array's objects into nsdictionaries
    NSMutableArray *wrappedObjs = [NSMutableArray array];
    for (NSInteger i = 0; i < array.count; i++)
    {
        [wrappedObjs addObject:@{@"value": array[i], @"index":@(i)}];
    }
    
    //Specify the value field as sort criteria and sort
    NSSortDescriptor *sd = [NSSortDescriptor sortDescriptorWithKey:@"value" ascending:ascending];
    [wrappedObjs sortUsingDescriptors:@[sd]];
    
    //Fetch and return indices of sorted array
    return [wrappedObjs valueForKey:@"index"];
}

@end
