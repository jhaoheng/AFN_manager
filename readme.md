# AFN_manager

## kit
- AFNetworking

## example

```
http_manager *_manager = [http_manager shared];
    _manager._delegate = self;
    [_manager sendDataOfRequest:[_manager method_jsonFormatAndUrlIs:@"" andParameters:@{@"foo": @"bar", @"baz": @[@1, @2, @3]}]];
```

and delegate

```
#pragma mark - http delegate
- (void)http_finish_response:(NSURLResponse *)response :(id)responseObject :(NSError *)error
{
    if (error) {
        NSLog(@"Error: %@", error);
    } else {
        NSLog(@"%@ %@", response, responseObject);
    }
}
```

