//
//  DocSelectionViewController.m
//  Novels
//
//  Created by asuuser on 1/24/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "DocSelectionViewController.h"

@implementation DocSelectionViewController

@synthesize picker = _picker;
@synthesize books = _books;
@synthesize viewController = _viewController;

-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView{
    return 1;
}

-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component{
    return [self.books count];
}

-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component{
    return [self.books objectAtIndex:row];
}

-(IBAction)readButtonPressed
{
    self.viewController = [[TextViewController alloc] initWithNibName:@"TextViewController" bundle:nil];
    
    int index = [self.picker selectedRowInComponent:0];
    
    self.viewController.book = [self.books objectAtIndex:index];
    
    [self.navigationController pushViewController:self.viewController animated:YES];
    
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];

    self.books = [NSArray arrayWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"Books" ofType:@"plist"]];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
