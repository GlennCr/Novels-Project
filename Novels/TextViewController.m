//
//  TextViewController.m
//  Novels
//
//  Created by asuuser on 1/24/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "TextViewController.h"

@implementation TextViewController

@synthesize textView = _textView;
@synthesize book = _book;

-(void)loadText:(NSString *)path
{
    //The stringWithContentsOfFile:encoding:error method loads a file into an NSString, given the encoding.
    //Alice.txt is encoded UTF-8
    //We pass NULL for the error argument, because we dont care if there is an error right now.
    NSString *textString = [NSString stringWithContentsOfFile:path 
                                                     encoding:NSUTF8StringEncoding
                                                        error:NULL];
    
    self.textView.text = textString;
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

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self loadText:[[NSBundle mainBundle] pathForResource:self.book ofType:@"txt"]];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    //Alice.txt is within the sources for our application.
    //[self loadText:[[NSBundle mainBundle] pathForResource:@"Alice" ofType:@"txt"] ];
    
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
