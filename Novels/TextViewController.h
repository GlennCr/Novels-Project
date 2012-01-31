//
//  TextViewController.h
//  Novels
//
//  Created by asuuser on 1/24/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TextViewController : UIViewController
{
    IBOutlet UITextView *textView;
    NSString *book;
}
@property (retain, nonatomic) IBOutlet UITextView *textView;
@property (retain, nonatomic) NSString *book;

-(void)loadText:(NSString *)path;

@end
