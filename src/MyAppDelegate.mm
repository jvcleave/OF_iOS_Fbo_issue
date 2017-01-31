#import "MyAppDelegate.h"
#import "ofApp.h"
#import "ofAppViewController.h"

@implementation MyAppDelegate

@synthesize navigationController;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    [super applicationDidFinishLaunching:application];
    
    
    self.navigationController = [[UINavigationController alloc] init];
    [self.window setRootViewController:self.navigationController];
    
    self.navigationController.navigationBar.barStyle = UIBarStyleBlackTranslucent;
    self.navigationController.navigationBar.topItem.title = @"Home";
    
    ofAppViewController *appViewController = [[ofAppViewController alloc] initWithFrame:[[UIScreen mainScreen] bounds]
                                                                                 app:new ofApp()];
    
    //ISSUE
    bool doBreakFBOs = false;
    
    if(doBreakFBOs)
    {
        UIViewController* myRoot = self.window.rootViewController;
        [myRoot presentViewController:appViewController animated:NO completion:NULL];

    }else
    {
        [self.navigationController pushViewController:appViewController animated:NO];
        self.navigationController.navigationBar.hidden = YES;
    }
    return YES;
}



@end
