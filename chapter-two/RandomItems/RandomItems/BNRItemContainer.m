//
//  BNRItemContainer.m
//  RandomItems
//
//  Created by Julian Mayorga on 4/22/15.
//  Copyright (c) 2015 Julian Mayorga. All rights reserved.
//

#import "BNRItemContainer.h"

@implementation BNRItemContainer

- (instancetype) initWithSubItems:(NSArray *)items {
    self = [super init];

    if (self) {
        _subItems = items;
        _itemName = @"Container";
    }

    return self;
}

- (NSString *)description {
    NSString *descriptionString = [[NSString alloc] initWithFormat:@"%@ Worth: $%d Contains: %@", self.itemName, self.valueInDollars, self.subItems];

    return descriptionString;
}

- (NSArray *)subItems {
    return _subItems;
}

- (int)valueInDollars {
    int result = 0;
    for (BNRItem *item in self.subItems) {
        result = result + item.valueInDollars;
    }
    return result;
}

- (void)setSubItems:(NSArray *)items {
    _subItems = items;
}

@end
