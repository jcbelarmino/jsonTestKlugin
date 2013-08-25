//
//  JsonTest.m
//  testJson
//
//  Created by TST on 23/08/13.
//  Copyright (c) 2013 TST. All rights reserved.
//

#import "JsonTest.h"
#import <Foundation/Foundation.h>

@implementation JsonTest

-(NSString*)getjSon {
    NSString *urlString= [NSString stringWithFormat:@"http://klugin-jcb.rhcloud.com/rest/rotas"];
    NSURL *url = [NSURL URLWithString:urlString];
    NSData *data = [NSData dataWithContentsOfURL:url];
    NSError *error;
    NSArray *jsonResultSetArray = (NSArray*)[NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:&error];
    NSLog(@"json resultset %@",jsonResultSetArray);

    for (NSDictionary *rota in jsonResultSetArray){
        NSLog(@"dicresultset %@",rota);
        NSLog(@" id:%@", [rota objectForKey:@"id"]);//pode pegar o valor do elemento assim
        NSLog(@" origem: %@", rota[@"origem"]  );// ou pode pegar assim
        NSArray* pontosRota = [rota objectForKey:@"pontosRota"];
        for (NSDictionary* ponto in pontosRota) {
            NSLog(@"rota: %@", ponto);
            NSLog(@"lat = %@", [ponto objectForKey:@"lat" ]);
            NSLog(@"longi = %@", [ponto objectForKey:@"longi" ]);

        }
    }

    //NSLog(jsonString);
    return data.description;
}

-(void)parseJson:(NSString *)jsonString {
    
    NSData *jsonData = [jsonString dataUsingEncoding:NSUTF8StringEncoding];
    NSArray *jsonArray = [NSJSONSerialization JSONObjectWithData:jsonData options:0 error:nil];
    
    for(NSDictionary* account in jsonArray) {
        
        NSLog([account objectForKey:@"username"]);
        NSLog([account objectForKey:@"surname"]);
        NSLog([account objectForKey:@"name"]);
    }
    
}
@end