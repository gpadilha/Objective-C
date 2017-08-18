//
//  main.m
//  Assignment1
//
//  Created by guilherme on 2017-08-17.
//  Copyright © 2017 gpadilha. All rights reserved.
//

#import <Foundation/Foundation.h>

void printMenu(){
    printf("---Program menu---\n");
    printf("1-Uppercase\n");
    printf("2-Lowercase\n");
    printf("3-Numberize\n");
    printf("4-Canadianize\n");
    printf("5-Respond\n");
    printf("6-De-Space-It\n");
    
    printf("0-Exit\n");
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSLog(@"Program started");
        
        char inputChars[255];
        int option;
        
        printMenu();
        printf("Select one option: ");
        fgets(inputChars, 255, stdin);
        option = atoi(inputChars);

        
        while(option != 0){
            
            printf("Input a string: ");
            fgets(inputChars, 255, stdin);

            NSString *inputString = [NSString stringWithUTF8String:inputChars];
            inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet newlineCharacterSet]];
            
            NSString *resultString;
            NSDecimalNumber *resultNumber;
            switch (option) {
                case 1:
                    resultString = [inputString uppercaseString];
                    printf("Result string: %s\n", [resultString UTF8String]);
                    break;
                case 2:
                    resultString = [inputString lowercaseString];
                    printf("Result string: %s\n", [resultString UTF8String]);
                    break;
                case 3:
                    resultNumber = [NSDecimalNumber decimalNumberWithString:inputString ];
                    resultString = [NSString stringWithFormat:@"%.02f", [resultNumber floatValue]];
                    if([resultString isEqualToString:@"nan"]){
                        resultString = @"Failed to convert your input to number";
                    }
                    printf("Result number: %s\n", [resultString UTF8String]);
                    break;
                case 4:
                    resultString = [inputString stringByAppendingString:[NSString stringWithUTF8String:", eh?"]];
                    printf("Result string: %s\n", [resultString UTF8String]);
                    break;
                case 5:
                    if([inputString containsString:[NSString stringWithUTF8String:"?"]]){
                        resultString = [NSString stringWithUTF8String:"I don't know"];
                    }else if([inputString containsString:[NSString stringWithUTF8String:"!"]]){
                        resultString = [NSString stringWithUTF8String:"Whoa, calm down!"];
                    }else{
                        resultString = [NSString stringWithUTF8String:"I got it"];
                    }
                    printf("Result string: %s\n", [resultString UTF8String]);
                    break;
                case 6:
                    resultString = [inputString stringByReplacingOccurrencesOfString:[NSString stringWithUTF8String:" "] withString:[NSString stringWithUTF8String:"-"]];
                    printf("Result string: %s\n", [resultString UTF8String]);
                    break;
                default:
                    printf("%s","Invalid option");
                    break;
            }
            
            printf("\nPress ENTER key to Continue\n");
            getchar();
            printMenu();
            printf("Select one option: ");
            fgets(inputChars, 255, stdin);
            option = atoi(inputChars);
            
        }
        

    }
    return 0;
}
