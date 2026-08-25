#import <Foundation/Foundation.h>
#import <objc/runtime.h>
#import <malloc/malloc.h>

static void Inspect(id value) {
    const void *pointer = (__bridge const void *)value;
    size_t heapSize = malloc_size(pointer);
    NSLog(@"value=%@ class=%@ pointer=%p malloc_size=%zu",
          value, object_getClass(value), pointer, heapSize);
}

int main(void) {
    @autoreleasepool {
        NSArray *values = @[
            @1,
            @42,
            @123456789,
            [NSNumber numberWithLongLong:LLONG_MAX],
            @"a",
            [@"a somewhat longer runtime string" mutableCopy]
        ];
        NSLog(@"Inspecting Foundation object representations:");
        for (id value in values) { Inspect(value); }
        NSLog(@"A malloc_size of 0 is a useful clue that the pointer is not a normal heap allocation. Exact representations are private and may vary.");
    }
    return 0;
}
