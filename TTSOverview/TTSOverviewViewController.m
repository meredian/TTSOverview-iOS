
#import "TTSOverviewViewController.h"
#import "FliteTTS.h"

@implementation TTSOverviewViewController

- (id)init {
    self = [super init];
    if (self) {
        
    }
    return self;
}

- (void)dealloc {
    [super dealloc];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark - View lifecycle

- (void)viewDidLoad {
    _textView.editable = YES;
	_fliteEngine = [[FliteTTS alloc] init];
    [super viewDidLoad];
}

- (void)viewDidUnload {
    [super viewDidUnload];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation {
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

#pragma mark - UI
- (IBAction)FliteTapped {
    [self runFlite:_textView.text];
}

#pragma mark - Synthesizers
- (void)runFlite:(NSString *)text {
    [_fliteEngine speakText:text];
}
@end
