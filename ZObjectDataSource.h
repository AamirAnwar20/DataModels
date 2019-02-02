//
//  ZObjectDataSource.h
//  ZCustomCellLayout
//
//  Created by Aamir Anwar on 01/02/19.
//  Copyright © 2019 Aamir Anwar. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ZCustomObject.h"

@interface ZObjectDataSource : NSObject
@property (nonatomic ,strong) NSArray <ZCustomObject *> *items;
@end
