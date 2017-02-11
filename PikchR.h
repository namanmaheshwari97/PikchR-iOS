//
//  PikchR.h
//  PikchR
//
//  Created by Naman Maheshwari on 06/02/17.
//  Copyright © 2017 Naman Maheshwari. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
@interface PikchR : NSObject

+(NSString *) openCVVersionString;
+(UIImage *) convertGray:(UIImage *) image;
+(UIImage *) convertRGB:(UIImage *) image;
@end
