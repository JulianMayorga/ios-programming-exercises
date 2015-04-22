//
//  main.m
//  RandomItems
//
//  Created by Julian Mayorga on 4/21/15.
//  Copyright (c) 2015 Julian Mayorga. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRItem.h"
#import "BNRItemContainer.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Create a mutable array object, store its address in items variable
        NSMutableArray *items = [[NSMutableArray alloc] init];

        for (int i = 0; i < 10; i++) {
            BNRItem *item = [BNRItem randomItem];
            [items addObject:item];
        }

        BNRItemContainer *itemContainer = [[BNRItemContainer alloc] initWithSubItems:items];

        NSLog(@"%@", itemContainer);

        // Bronze challenge
        // NSLog(@"%@", items[11]);
        //
        // Exception: Terminating app due to uncaught exception 'NSRangeException',
        // reason: '*** -[__NSArrayM objectAtIndex:]: index 11 beyond bounds [0 .. 9]'

        // Destroy the mutable array
        items = nil;
        itemContainer = nil;
    }
    return 0;
}
