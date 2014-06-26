# git-blink

git-blink is a simple shell script that will blink your blink(1) LED lights if your git repo has uncommitted changes. 

## blink(1)
"blink(1) is a super status light: it packs three dimensions of information (color, brightness and pattern) into a single tiny package that fits into any USB port on nearly every device. It makes it incredibly easy to connect any data source in the cloud or on your computer to a full-color RGB LED so you can know what's happening without checking any windows, going to any websites or typing any commands." Learn more about it at [ThingM](http://thingm.com).

## Usage
Provide the path to your repos in $GIT_REPO_PATH. That's it. 

You can download the blink1-tool binary available [here](https://github.com/todbot/blink1/releases) 

For best results, call this script from cron every 5 minutes. 

```
  */5 * * * * * $HOME/.git/scripts/git-blink.sh
```

Many other git operations can be wired to the blink(1) lights. This is a good starting point, that's all. 

For other fun things to do with blink(1), check out [blink(1) on github](https://github.com/todbot/blink1)

Tested on OS X 10.9. 

## License

This code is distributed under the terms and conditions of the [MIT license](LICENSE).
