//
//  DocSelectionViewController.h
//  Novels
//
//  Created by asuuser on 1/24/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TextViewController.h"

@interface DocSelectionViewController : UIViewController <UIPickerViewDataSource, UIPickerViewDelegate>

@property (retain, nonatomic) IBOutlet UIPickerView *picker;
@property (retain, nonatomic) NSArray *books;
@property (strong, atomic) TextViewController *viewController;
-(IBAction)readButtonPressed;

@end
