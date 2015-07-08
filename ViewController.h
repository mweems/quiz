//
//  ViewController.h
//  Quiz
//
//  Created by Matt Weems on 26/01/2015.
//  Copyright (c) 2015 Matt Weems. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

{
    int currentQuestionIndex;
    NSMutableArray *questions;
    NSMutableArray *answers;
    IBOutlet UILabel *questionField;
    IBOutlet UILabel *answerField;
    
}

- (IBAction)showQuestion:(id)sender;
- (IBAction)showAnswer:(id)sender;


@end

