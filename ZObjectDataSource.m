//
//  ZObjectDataSource.m
//  ZCustomCellLayout
//
//  Created by Aamir Anwar on 01/02/19.
//  Copyright © 2019 Aamir Anwar. All rights reserved.
//

#import "ZObjectDataSource.h"

@interface ZObjectDataSource()
@property (nonatomic, strong) NSMutableArray <ZCustomObject *> *store;
@end

@implementation ZObjectDataSource
- (instancetype)init {
    self = [super init];
    if (self) {
        self.store = [[NSMutableArray alloc] init];
        for (int i=0;i < (10+arc4random()%25); i++) {
            [self.store addObject:[self generateObject]];
        }
    }
    return self;
}

- (NSArray <ZCustomObject *> *)getItems {
    return self.store;
}

- (ZCustomObject *)generateObject {
    ZCustomObject *object = [[ZCustomObject alloc] init];
    object.title = [self getRandomTitle];
    object.localImageURL = [self imageName];
    object.actionTitle = [self getRandomActionText];
    object.ordering = [self getRandomOrdering];
    return object;
}

- (NSArray<ZCustomObject *> *)items {
    return self.store;
}

- (NSString *)getRandomTitle {
    return @"Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod,Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod,Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod,Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod,Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod";
}

- (NSString *)imageName {
    return @"example_image";
}

- (NSString *)getRandomActionText {
    return @"Press me!";
}

- (NSArray <NSString *> *)getRandomOrdering {
    NSInteger rand = arc4random()%3;
    if (rand == 0) {
        return @[@"A", @"C", @"B"];
    }
    else if (rand == 1) {
        return @[@"A", @"B", @"C"];
    }
    else {
        return @[@"B", @"A", @"C"];
    }
}

@end
