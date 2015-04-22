//
//  BNRItemContainer.h
//  RandomItems
//
//  Created by Julian Mayorga on 4/22/15.
//  Copyright (c) 2015 Julian Mayorga. All rights reserved.
//

#import "BNRItem.h"

@interface BNRItemContainer : BNRItem {
    NSArray *_subItems;
}

- (instancetype) initWithSubItems:(NSArray *)items;

- (NSArray *)subItems;

- (void)setSubItems:(NSArray *)items;

@end
