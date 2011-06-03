
#import <UIKit/UIKit.h>

@class FliteTTS;
@interface TTSOverviewViewController : UIViewController {
    IBOutlet UITextView *_textView;
    IBOutlet UIButton *_FliteButton;

	FliteTTS *_fliteEngine;
}

- (IBAction)FliteTapped;

- (void)runFlite:(NSString *)text;



@end
