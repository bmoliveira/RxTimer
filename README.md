RxTimer
===========

**RxTimer** provides an easy to use RxSwift binding for NSTimer.

## Usage

```swift
NSTimer.rx_timer(10)
  .subscribeNext { _ in
    print("timer triggered")
  }
  .addDisposableTo(disposeBag)
```

### Skip first event to ignore trigger upon subscribing

```swift
NSTimer.rx_timer(10)
  .skip(1)
  .subscribeNext { _ in
    print("timer triggered")
  }
  .addDisposableTo(disposeBag)
```

### Take(n) to cancel the timer after n number of calls

```swift
NSTimer.rx_timer(10)
  .take(10)
  .subscribeNext { _ in
    print("timer triggered")
  }
  .addDisposableTo(disposeBag)
```


Installing
----------

#### CocoaPods

```ruby
pod 'RxTimer'
```

And that'll be 👌

License
-------

MIT License.
