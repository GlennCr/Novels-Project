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
{
    NSArray *books;
    UIPickerView *picker;
}
@property (retain, nonatomic) IBOutlet UIPickerView *picker;

-(IBAction)readButtonPressed;

@end
