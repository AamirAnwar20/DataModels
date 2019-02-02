//
//  ZCustomObject.h
//  ZCustomCellLayout
//
//  Created by Aamir Anwar on 01/02/19.
//  Copyright © 2019 Aamir Anwar. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface ZCustomObject : NSObject
@property (nonatomic, strong, nullable) NSString *title;
@property (nonatomic, strong, nullable) NSString *localImageURL;
@property (nonatomic, strong, nullable) NSString *actionTitle;
@property (nonatomic, strong, nullable) NSArray <NSString *> *ordering;
@end

