#include <stdio.h>
#import <Foundation/Foundation.h>
#import "NSTask.h"

NSString* runAsCommand(NSString* cmd) {
    NSPipe* pipe = [NSPipe pipe];
    NSTask* task = [[NSTask alloc] init];
    [task setLaunchPath: @"/bin/sh"];
    [task setArguments:@[@"-c", [NSString stringWithFormat:@"%@", cmd]]];
    [task setStandardOutput:pipe];

    NSFileHandle* file = [pipe fileHandleForReading];
    [task launch];

    return [[NSString alloc] initWithData:[file readDataToEndOfFile] encoding:NSUTF8StringEncoding];
}


int main(int argc, char *argv[], char *envp[]) {
  NSString* output = runAsCommand(@"echo hello");
  NSLog(@"output: %@", output);
  return 0;
}