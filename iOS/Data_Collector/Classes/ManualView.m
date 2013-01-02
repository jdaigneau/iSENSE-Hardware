//
//  ManualView.m
//  Splash
//
//  Created by Mike Stowell on 12/28/12.
//  Copyright 2012 iSENSE Development Team. All rights reserved.
//  Engaging Computing Lab, Advisor: Fred Martin
//

#import "ManualView.h"
#import "Data_CollectorAppDelegate.h"


@implementation ManualView

@synthesize logo, loggedInAs, expNum, save, clear, sessionName, media, scrollView;


 // Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
 - (void)viewDidLoad {
	 [super viewDidLoad];
	 
	 [self.view sendSubviewToBack:scrollView];
	 
	 [self.sessionName addTarget:self
						  action:@selector(textFieldFinished:)
				forControlEvents:UIControlEventEditingDidEndOnExit];
	 sessionName.enablesReturnKeyAutomatically = NO;
	 
	 loggedInAs.text = [StringGrabber getString:@"logged_in_as"];
	 expNum.text = [StringGrabber getString:@"exp_num"];
	 
	 UIBarButtonItem *menuButton = [[UIBarButtonItem alloc] initWithTitle:@"Menu" style:UIBarButtonItemStylePlain target:self action:@selector(useMenu:)];          
	 self.navigationItem.rightBarButtonItem = menuButton;
	 [menuButton release];
	 
 }

- (IBAction)textFieldFinished:(id)sender {}
 

- (void)didReceiveMemoryWarning {
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc. that aren't in use.
}

- (void)viewDidUnload {
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}


- (void)dealloc {
    [super dealloc];
}

- (IBAction) saveOnClick:(id)sender {
	
}

- (IBAction) clearOnClick:(id)sender {
	
}

- (IBAction) mediaOnClick:(id)sender {
	[CameraUsage useCamera];
}

- (IBAction) useMenu:(id)sender {
	
}

@end