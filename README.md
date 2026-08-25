# Objective-C Tagged Pointers Demo

A macOS command-line experiment that prints Foundation object classes, pointer values, and `malloc_size` to compare tagged representations with ordinary heap objects.

## Run

```bash
git clone https://github.com/2252408699/objc-tagged-pointers-demo.git
cd objc-tagged-pointers-demo
make run
```

Requires macOS and Xcode Command Line Tools. Tagged-pointer encodings are private and can vary by OS and architecture.
