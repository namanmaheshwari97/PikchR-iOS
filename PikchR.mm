//
//  PikchR.m
//  PikchR
//
//  Created by Naman Maheshwari on 06/02/17.
//  Copyright © 2017 Naman Maheshwari. All rights reserved.
//

#import <opencv2/opencv.hpp>
#import "PikchR.h"
#import <opencv2/imgcodecs/ios.h>
#include "opencv2/video.hpp"

@implementation PikchR

+(NSString *) openCVVersionString{
    return [NSString stringWithFormat:@"OpenCV Version: %s", CV_VERSION];
}
+(UIImage *) convertGray: (UIImage *) image{
    cv::Mat imageMat;
    UIImageToMat(image, imageMat);
    
    if(imageMat.channels() == 1)
        return image;
    else {
        cv::Mat grayMat;
        cv::cvtColor(imageMat,grayMat, CV_BGR2GRAY);
        return MatToUIImage(grayMat);
    }
    
}

+(UIImage *) convertRGB: (UIImage *) image{
    cv::Mat imageMat;
    UIImageToMat(image, imageMat);
    
    if(imageMat.channels() == 1)
        return image;
    else {
        cv::Mat grayMat;
        cv::cvtColor(imageMat,grayMat, CV_BGR2RGB);
        return MatToUIImage(grayMat);
    }
    
}

@end
