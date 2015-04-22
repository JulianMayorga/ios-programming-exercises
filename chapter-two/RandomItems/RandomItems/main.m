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

        BNRItem *backpack = [[BNRItem alloc] initWithItemName:@"Backpack"];
        [items addObject:backpack];

        BNRItem *calculator = [[BNRItem alloc] initWithItemName:@"Calculator"];
        [items addObject:calculator];

        backpack.containedItem = calculator;

        backpack = nil;
        calculator = nil;

        // Gold challenge
        // BNRItemContainer *itemContainer = [[BNRItemContainer alloc] initWithSubItems:items];
        // NSLog(@"%@", itemContainer);

        // Bronze challenge
        // NSLog(@"%@", items[11]);
        //
        // Exception: Terminating app due to uncaught exception 'NSRangeException',
        // reason: '*** -[__NSArrayM objectAtIndex:]: index 11 beyond bounds [0 .. 9]'

        // Destroy the mutable array
        NSLog(@"Setting items to nil...");
        items = nil;
        //itemContainer = nil;
    }
    return 0;
}
