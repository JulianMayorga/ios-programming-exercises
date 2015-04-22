//
//  main.m
//  RandomItems
//
//  Created by Julian Mayorga on 4/21/15.
//  Copyright (c) 2015 Julian Mayorga. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRItem.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // Create a mutable array object, store its address in items variable
        NSMutableArray *items = [[NSMutableArray alloc] init];
        
        for (int i = 0; i < 10; i++) {
            BNRItem *item = [BNRItem randomItem];
            [items addObject:item];
        }
        
        // Bronze challenge
        // NSLog(@"%@", items[11]);
        //
        // Exception: Terminating app due to uncaught exception 'NSRangeException',
        // reason: '*** -[__NSArrayM objectAtIndex:]: index 11 beyond bounds [0 .. 9]'

        for (BNRItem *item in items) {
            NSLog(@"%@", item);
        }
        
        // Destroy the mutable array
        items = nil;
    }
    return 0;
}
