//
//  ViewController.m
//  Quiz
//
//  Created by Matt Weems on 26/01/2015.
//  Copyright (c) 2015 Matt Weems. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    questions = [[NSMutableArray alloc] init];
    answers = [[NSMutableArray alloc] init];
    [questions addObject:@"What is 7 + 7?"];
    [answers addObject:@"14"];
    [questions addObject:@"What is the capital of Vermont?"];
    [answers addObject:@"Montpelier"];
    [questions addObject:@"From what is Cognac made"];
    [answers addObject:@"Grapes"];
    
    return self;
}

- (IBAction)showQuestion:(id)sender
{
    currentQuestionIndex++;
    [questions addObject:@"new question"];
    NSLog(@"questionList %@", questions);
    if (currentQuestionIndex == [questions count]) {
        currentQuestionIndex = 0;
    }
    NSString *question = [questions objectAtIndex:currentQuestionIndex];
    NSLog(@"Displaying Question: %@", question);
    [questionField setText:question];
    [answerField setText:@"????"];
}

- (IBAction)showAnswer:(id)sender
{
    NSString *answer = [answers objectAtIndex:currentQuestionIndex];
    [answerField setText:answer];
}

@end
