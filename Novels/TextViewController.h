//
//  TextViewController.h
//  Novels
//
//  Created by asuuser on 1/24/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TextViewController : UIViewController

@property (retain, nonatomic) IBOutlet UITextView *textView;

-(void)loadText:(NSString *)path;

@end
