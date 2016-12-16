#import "ExitIOSApp.h"

@implementation ExitIOSApp

- (void)ExitIOSApp : (CDVInvokedUrlCommand*)command
{
    //show confirmation message to user
    UIAlertView* alert = [[UIAlertView alloc] initWithTitle:@"Tegarer" message:@"Do you want  to exit?" delegate:self cancelButtonTitle:@"Cancel" otherButtonTitles:@"OK", nil];
    [alert show];
}
- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    
    if (buttonIndex != 0)  // 0 == the cancel button
    {
        //home button press programmatically
        UIApplication *app = [UIApplication sharedApplication];
        [app performSelector:@selector(suspend)];
        //wait 2 seconds while app is going background
        [NSThread sleepForTimeInterval:2.0];
        //exit app when app is in background
        NSLog(@"exit(0)");
        exit(0);
    }
}

@end
