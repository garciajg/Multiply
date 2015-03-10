//
//  ViewController.m
//  Multiply
//
//  Created by Jose Garcia on 3/9/15.
//  Copyright (c) 2015 MobileMakers. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UISegmentedControl *operatorSegmentControl;
@property (weak, nonatomic) IBOutlet UILabel *resultLabel;

@end

@implementation ViewController
- (IBAction)onButtonPressed:(UIButton *)sender {

    if(self.operatorSegmentControl.selectedSegmentIndex == -1){
    int selectedNumber = [[sender titleForState:UIControlStateNormal] intValue];
    //NSLog(@"%i", selectedNumber);
    NSString * buttonPressed = [NSString stringWithFormat:@"%i", selectedNumber];
    self.resultLabel.text = [self.resultLabel.text stringByAppendingString:buttonPressed];
    self.resultOne = self.resultLabel.text;
    }
    else{
        self.resultLabel.text = @"";
        int selectedNumber = [[sender titleForState:UIControlStateNormal] intValue];
        //NSLog(@"%i", selectedNumber);
        NSString * buttonPressed = [NSString stringWithFormat:@"%i", selectedNumber];
        self.resultLabel.text = [self.resultLabel.text stringByAppendingString:buttonPressed];
        self.resultTwo = self.resultLabel.text;
        self.operatorSegmentControl.selectedSegmentIndex = -1;
    }
}

- (IBAction)onSegmentChange:(id)sender {
    NSLog(@"PRESSED");
    if (self.operatorSegmentControl.selectedSegmentIndex == 0){

        //  calculation = numberOne * numberTwo;
    }
    else if (self.operatorSegmentControl.selectedSegmentIndex == 1){
        //   calculation = numberOne / numberTwo;
    }

    else if (self.operatorSegmentControl.selectedSegmentIndex == 2){

        // add
    }

    else if (self.operatorSegmentControl.selectedSegmentIndex == 3){
        
        //subtract
    }


}


- (IBAction)onCalculateButtonPressed:(id)sender {
    int calculation;
    //int numberTwo = self.mutiplierLabel.text.intValue;
    if (self.operatorSegmentControl.selectedSegmentIndex == 0){
        int multiplierOne = self.resultOne.intValue;
        int multiplierTwo = self.resultTwo.intValue;

      calculation = multiplierOne * multiplierTwo;
    }
    else if (self.operatorSegmentControl.selectedSegmentIndex == 1){
     //   calculation = numberOne / numberTwo;
        int dividerOne = self.resultOne.intValue;
        int dividerTwo = self.resultTwo.intValue;

        calculation = dividerOne / dividerTwo;
    }

    else if (self.operatorSegmentControl.selectedSegmentIndex == 2){
        int addOne = self.resultOne.intValue;
        int addTwo = self.resultTwo.intValue;

        calculation = addOne + addTwo;
        // add
    }

    else if (self.operatorSegmentControl.selectedSegmentIndex == 3){
        int subtractOne = self.resultOne.intValue;
        int subtractTwo = self.resultTwo.intValue;

        calculation = subtractOne - subtractTwo;
        //subtract
    }

    NSString *calculationText = [NSString stringWithFormat:@"%i",calculation];
    self.resultLabel.text = calculationText;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.operatorSegmentControl.selectedSegmentIndex = -1;
}




@end
